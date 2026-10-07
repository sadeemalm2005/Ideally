//
//  QuestionBank.swift
//  Venture Readiness Assessment
//
//  The category-keyed question bank. Each category's 11 questions now
//  live in their own file (RetailQuestions.swift, RestaurantQuestions.swift,
//  ResidentialServicesQuestions.swift, HealthBeautyQuestions.swift) so the
//  Swift compiler type-checks each one as a small, separate expression.
//
//  IMPORTANT: keep it this way. Pasting all the question data back into
//  one giant literal here is what caused the "Build Failed / killed"
//  error before — Swift's type-checker can choke on very large nested
//  array/dictionary literals with no explicit type annotations at each
//  level, and gets killed by the OS instead of producing a normal error.
//

import Foundation

let questionBank: QuestionBank = [
    "retail": RetailQuestionData.questionSet,
    "restaurant": RestaurantQuestionData.questionSet,
    "residential_services": ResidentialServicesQuestionData.questionSet,
    "health_beauty": HealthBeautyQuestionData.questionSet,
    "professional_services": CategoryQuestionSet(partOne: [], partTwo: [], partThree: []) // stub — no questions yet
]
