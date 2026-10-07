//
//  IdeaModel.swift
//  Venture Readiness Assessment
//
//  One saved assessment result — a single entry in the Ideas Bank.
//  Created automatically when a user finishes the 11-question assessment.
//  Everything the Summary/Details pages show (readiness ring, strengths,
//  areas to improve, category breakdown, the full answer list) is derived
//  from this one struct, so the assessment data is genuinely "linked in
//  the backend" rather than re-entered or faked on the results screens.
//

import SwiftUI

struct Idea: Identifiable, Codable {
    let id: UUID
    var title: String                // business idea text from Page 1
    var description: String          // user-entered description
    var date: String                 // formatted date, e.g. "Aug 10, 2026"
    var categoryKeyword: String      // key into questionBank / BusinessCategory
    var answers: [String: String]    // question.id -> selected AnswerOption.id
    var readinessPercentage: Double  // 0-100, snapshotted at submit time

    init(
        title: String,
        description: String,
        categoryKeyword: String,
        answers: [String: String],
        readinessPercentage: Double,
        date: String = Idea.formattedToday()
    ) {
        self.id = UUID()
        self.title = title.isEmpty ? "Untitled idea" : title
        self.description = description
        self.date = date
        self.categoryKeyword = categoryKeyword
        self.answers = answers
        self.readinessPercentage = readinessPercentage
    }

    static func formattedToday() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, yyyy"
        return formatter.string(from: Date())
    }
}

// MARK: - Building an Idea from a finished AssessmentSession

extension Idea {
    /// Snapshots a finished AssessmentSession into a saved Idea. Call this
    /// once, right when the user taps Submit on the last question.
    static func from(session: AssessmentSession) -> Idea {
        let answerIDs: [String: String] = session.answers.mapValues { $0.id }
        return Idea(
            title: session.businessIdeaText,
            description: session.businessDescription,
            categoryKeyword: session.categoryKeyword,
            answers: answerIDs,
            readinessPercentage: session.result.weightedScore
        )
    }
}

// MARK: - Reconstructing scored answers from the stored option IDs

extension Idea {
    /// Every question for this idea's category, paired with the option the
    /// user actually chose — looked up from `questionBank` using the
    /// stored IDs, not re-computed or guessed.
    var scoredAnswers: [QuestionAnswer] {
        guard let questions = questionBank[categoryKeyword]?.allQuestions else { return [] }
        return questions.compactMap { question in
            guard
                let optionID = answers[question.id],
                let option = question.options.first(where: { $0.id == optionID })
            else { return nil }
            return QuestionAnswer(question: question, selectedOption: option)
        }
    }

    var readiness: GradingEngine.ReadinessResult {
        GradingEngine.finalReadiness(forTotalScore: readinessPercentage)
    }

    var readinessEncouragement: String {
        switch readiness {
        case .highlyReady: return "you're fully geared up\nto launch!"
        case .readyForLaunch: return "you're on the right\ntrack !!"
        case .vulnerable: return "you're close a few\ngaps to shore up first"
        case .notReady: return "let's build up a few\nkey systems first"
        }
    }

    /// Competencies where the user picked a Level 3 or Level 5 answer.
    var strengths: [String] {
        let names = scoredAnswers
            .filter { $0.selectedOption.points >= 80 }
            .map { shortCompetency($0.question.competency) }
        return Array(Set(names)).sorted()
    }

    /// Competencies where the user picked a Level 1 or Level 2 answer.
    var areasToImprove: [String] {
        let names = scoredAnswers
            .filter { $0.selectedOption.points < 80 }
            .map { shortCompetency($0.question.competency) }
        return Array(Set(names)).sorted()
    }

    private func shortCompetency(_ full: String) -> String {
        // "Administration & Management (Ops & Costs)" -> "Administration & Management"
        if let range = full.range(of: " (") {
            return String(full[..<range.lowerBound])
        }
        return full
    }

    /// Groups the 11 competencies into 4 broad buckets (0.0-1.0 each) for
    /// the progress-bar summary on the Summary tab:
    /// - Business Knowledge: Admin & Management (Q1-2) + Personnel (Q3)
    /// - Operational Planning: Time Management (Q4) + Dependability (Q7)
    /// - Leadership Skills: Customer Service (Q5-6) + Integrity (Q8)
    /// - Personality Fit: Stress Tolerance (Q9-10) + Attention to Detail (Q11)
    var categoryBreakdown: [(label: String, percent: Double)] {
        func average(_ numbers: [Int]) -> Double {
            guard !numbers.isEmpty else { return 0 }
            return Double(numbers.reduce(0, +)) / Double(numbers.count) / 100.0
        }

        let byNumber = Dictionary(
            uniqueKeysWithValues: scoredAnswers.map { ($0.question.questionNumber, $0.selectedOption.points) }
        )

        let businessKnowledge = average([byNumber[1], byNumber[2], byNumber[3]].compactMap { $0 })
        let operationalPlanning = average([byNumber[4], byNumber[7]].compactMap { $0 })
        let leadershipSkills = average([byNumber[5], byNumber[6], byNumber[8]].compactMap { $0 })
        let personalityFit = average([byNumber[9], byNumber[10], byNumber[11]].compactMap { $0 })

        return [
            ("Personality Fit", personalityFit),
            ("Leadership Skills", leadershipSkills),
            ("Business Knowledge", businessKnowledge),
            ("Operational Planning", operationalPlanning)
        ]
    }
}

// MARK: - Card gradient colors

extension Idea {
    /// Cycles through the designer's named color-asset gradients (already
    /// in the project from the original sample data) so every card in the
    /// Ideas Bank gets a varied look, consistent per category.
    var gradientColors: [Color] {
        GradientPalette.colors(forCategory: categoryKeyword)
    }
}

enum GradientPalette {
    private static let sets: [[String]] = [
        ["Card ideas bank first1", "Card ideas bank first2", "Card ideas bank first3"],
        ["Card ideas bank middle2", "Card ideas bank middle1", "Card ideas bank first2"],
        ["Card1Start 1", "Card1Start3", "Card1Start 1"],
        ["Card ideas bank last1", "Card ideas bank middle1", "Card ideas bank last2"],
        ["Card ideas bank first1", "Card1Start 1", "Card ideas bank last2"],
        ["Card1Start3", "Card ideas bank first2", "Card ideas bank middle1"],
        ["Card ideas bank last1", "Card1Start 1", "Card ideas bank first3"]
    ]

    static func colors(forCategory category: String) -> [Color] {
        let index = abs(category.hashValue) % sets.count
        return sets[index].map { Color($0) }
    }
}
