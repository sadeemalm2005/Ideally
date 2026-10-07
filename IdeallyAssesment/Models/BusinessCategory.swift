//
//  BusinessCategory.swift
//  Venture Readiness Assessment
//
//  Typed wrapper around the category keys used in `questionBank`.
//  Add a case here (and a matching key in QuestionBank.swift) whenever
//  you add a new category's question set.
//

import Foundation

enum BusinessCategory: String, CaseIterable, Codable {
    case retail = "retail"
    case restaurant = "restaurant"
    case residentialServices = "residential_services"
    case healthBeauty = "health_beauty"
    case professionalServices = "professional_services" // stub — no questions yet

    var displayName: String {
        switch self {
        case .retail: return "Retail / eCommerce"
        case .restaurant: return "Food & Restaurant Management"
        case .residentialServices: return "Residential & Commercial Services"
        case .healthBeauty: return "Health, Beauty & Fitness"
        case .professionalServices: return "Professional Services"
        }
    }

    /// The question set for this category, straight from the question bank.
    var questionSet: CategoryQuestionSet? {
        questionBank[rawValue]
    }
}
