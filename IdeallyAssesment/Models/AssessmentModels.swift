//
//  AssessmentModels.swift
//  Venture Readiness Assessment
//
//  Core data structures shared by all 5 pages of the assessment flow:
//  1. Auto-detection  2. Part 1  3. Part 2  4. Part 3  5. Results
//

import Foundation

// MARK: - Answer Level
// Maps the 4 selectable option levels to their point values.
enum AnswerLevel: Int, Codable {
    case level1 = 20   // Informal / Reactive
    case level2 = 50   // Basic execution
    case level3 = 80   // Solid SOPs & Systems (target baseline)
    case level5 = 100  // Enterprise / Automated
}

// MARK: - Answer Option
struct AnswerOption: Identifiable, Codable, Hashable {
    let id: String          // "A", "B", "C", "D"
    let text: String        // full option description
    let level: AnswerLevel

    var points: Int { level.rawValue }
}

// MARK: - Assessment Question
struct AssessmentQuestion: Identifiable, Codable, Hashable {
    let id: String                 // stable unique id, e.g. "retail_q1"
    let questionNumber: Int        // overall question number (1-11) for grading table lookup
    let competency: String         // e.g. "Administration & Management (Part 1)"
    let onetMetric: String         // e.g. "Importance = 87"
    let weightPercentage: Double   // e.g. 10.86  (already expressed as a percent, not a fraction)
    let scenario: String
    let options: [AnswerOption]
}

// MARK: - A single answered question (used for grading + session storage)
struct QuestionAnswer: Identifiable, Hashable {
    var id: String { question.id }
    let question: AssessmentQuestion
    let selectedOption: AnswerOption
}

// MARK: - Category question set
// Holds the three assessment parts' worth of questions for one business category.
struct CategoryQuestionSet: Codable {
    var partOne: [AssessmentQuestion]
    var partTwo: [AssessmentQuestion]
    var partThree: [AssessmentQuestion]

    /// All 11 questions in official order (Part 1 → Part 2 → Part 3).
    /// Used by the single-question-per-screen flow, which doesn't care
    /// about part boundaries — it just steps through one long list.
    var allQuestions: [AssessmentQuestion] {
        partOne + partTwo + partThree
    }
}

// MARK: - Question Bank type
// Keyed by business category keyword (e.g. "retail", "restaurant"),
// as produced by the auto-detection layer on Page 1.
typealias QuestionBank = [String: CategoryQuestionSet]
