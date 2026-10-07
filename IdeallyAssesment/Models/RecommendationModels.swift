import Foundation

struct RecommendationOutput: Codable {
    let category: String
    let readinessScore: Double
    let assessmentBaseline: Double
    let recommendations: [RecommendationItem]

    enum CodingKeys: String, CodingKey {
        case category
        case readinessScore = "readiness_score"
        case assessmentBaseline = "assessment_baseline"
        case recommendations
    }
}
// any Recommendations output have to has these 3 info

struct RecommendationItem: Codable, Identifiable {
    var id: String { field }

    let field: String
    let userScore: Double
    let assessmentBaseline: Double
    let importance: Double
    let gap: Double
    let priorityScore: Double
    let gapLevel: String
    let recommendation: String
    let reason: String

    enum CodingKeys: String, CodingKey {
        case field
        case userScore = "user_score"
        case assessmentBaseline = "assessment_baseline"
        case importance
        case gap
        case priorityScore = "priority_score"
        case gapLevel = "gap_level"
        case recommendation
        case reason
    }
}
