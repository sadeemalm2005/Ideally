//
//  RestaurantQuestions.swift
//  Venture Readiness Assessment
//
//  Food & Restaurant Management — 11 questions (Part 1: Q1-4, Part 2: Q5-8, Part 3: Q9-11).
//  Split into its own file with explicitly-typed sub-arrays so the Swift
//  compiler type-checks it in small pieces instead of one giant literal
//  (a single huge nested array/dictionary literal is a known cause of
//  "Build Failed" / process killed with no visible error in Xcode).
//

import Foundation

enum RestaurantQuestionData {

    static let questionSet = CategoryQuestionSet(
        partOne: partOne,
        partTwo: partTwo,
        partThree: partThree
    )

    private static let partOne: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "restaurant_q1",
                questionNumber: 1,
                competency: "Administration & Management (Food Cost & Inventory)",
                onetMetric: "Importance = 77",
                weightPercentage: 9.96,
                scenario: "Your food cost percentage jumped by 6% over the last month, eroding your profit margins during a busy dining season. How do you address this surge?",
                options: [
                    AnswerOption(id: "A", text: "Do an immediate yield-loss audit on your top 10 most expensive ingredients, check actual portioning at the line, and renegotiate bulk pricing or set weekly prep specs with your key vendors.", level: .level3),
                    AnswerOption(id: "B", text: "Connect your POS order data directly with a digital kitchen inventory management system that tracks waste in real time, auto-calculates recipe yield variations, and flags price hikes from suppliers before orders are placed.", level: .level5),
                    AnswerOption(id: "C", text: "Tell the kitchen team to be more careful with food prep and make sure no food gets thrown away unnecessarily.", level: .level1),
                    AnswerOption(id: "D", text: "Sit down with the head chef to check recent food invoices, cross-reference them with stockroom counts, and make sure line cooks are using portion scales.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q2",
                questionNumber: 2,
                competency: "Administration & Management (Front & Back of House Workflow)",
                onetMetric: "Importance = 77",
                weightPercentage: 9.96,
                scenario: "During peak weekend service, ticket times for hot main courses are stretching past 30 minutes, causing food to sit under heat lamps and creating a backlog at the pass. How do you fix this?",
                options: [
                    AnswerOption(id: "A", text: "Ask the kitchen team to work faster and have servers help out by running plates as soon as they see them sitting at the pass.", level: .level1),
                    AnswerOption(id: "B", text: "Re-organize line prep stations so high-volume items are within arms' reach, institute a mandatory 'order-fire' routine between expediter and cooks, and track ticket completion times by station.", level: .level3),
                    AnswerOption(id: "C", text: "Audit kitchen prep station layouts to reduce cook movements, separate prep times from cooking times, and add an extra expediter at the pass to call out orders clearly.", level: .level2),
                    AnswerOption(id: "D", text: "Redesign the entire menu engineering workflow to balance station loads across grill, sauté, and prep, install dynamic Kitchen Display Systems (KDS) that automatically pace order firing based on live table courses, and run shift capacity modeling.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q3",
                questionNumber: 3,
                competency: "Personnel & Human Resources (Staff Retention & Training)",
                onetMetric: "Importance = 62",
                weightPercentage: 8.02,
                scenario: "Turnover among floor servers and line cooks is rising, leading to constant retraining costs and inconsistent service quality during peak shifts. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Offer a small hourly shift bonus to staff who stay past three months and remind everyone at pre-shift huddles about basic hospitality standards.", level: .level2),
                    AnswerOption(id: "B", text: "Build a structured 2-week onboarding playbook with assigned mentors, cross-train floor and kitchen staff to build flexibility, and conduct monthly 1-on-1 check-ins to catch burnout early.", level: .level3),
                    AnswerOption(id: "C", text: "Hire replacement staff quickly whenever someone leaves and cover open shifts yourself or ask available staff to stay late.", level: .level1),
                    AnswerOption(id: "D", text: "Build an integrated career path and profit-sharing tier system, use automated scheduling software to honor staff availability preferences and prevent fatigue, and establish a continuous peer-coaching culture.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q4",
                questionNumber: 4,
                competency: "Time Management (Shift Prioritization)",
                onetMetric: "Importance = 63",
                weightPercentage: 8.15,
                scenario: "Two hours before a sold-out Friday dinner service, your main walk-in cooler temp starts drifting up, a key food delivery arrives late at the back door, and two servers call in sick. How do you manage the next 120 minutes?",
                options: [
                    AnswerOption(id: "A", text: "Start handling tasks as they happen—help unload the truck first, then call off-duty servers, and check the cooler when you get a free moment.", level: .level1),
                    AnswerOption(id: "B", text: "Immediately shift temperature-sensitive food to freezer units and call an emergency tech, assign the prep cook to check off the delivery, call in backup staff, and adjust floor station layouts to cover missing servers.", level: .level3),
                    AnswerOption(id: "C", text: "Execute an immediate contingency plan: transfer high-risk inventory to backup cold storage, trigger an automated call-out roster to cover shifts, assign a floor captain to handle the delivery, and temporarily limit reservation pacing to protect kitchen flow.", level: .level5),
                    AnswerOption(id: "D", text: "Help the kitchen crew put away the delivery quickly, call off-duty servers to see if anyone can cover, and keep an eye on the cooler temperature throughout the night.", level: .level2)
                ]
            )
    ]

    private static let partTwo: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "restaurant_q5",
                questionNumber: 5,
                competency: "Customer & Personal Service (Complaint Recovery)",
                onetMetric: "Importance = 88",
                weightPercentage: 11.38,
                scenario: "A customer receives an undercooked dish, waits 20 minutes for a replacement, and is visibly angry, threatening to leave a harsh online review and demand a full refund for their entire table. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Apologize sincerely, remove the item from the bill, offer a free dessert, and remind the kitchen line cook to watch cooking temps.", level: .level2),
                    AnswerOption(id: "B", text: "Personally take charge at the table: apologize sincerely, void the entire table's bill or offer a gift card for a future visit, personally ensure the kitchen remakes the meal immediately, and log the incident to review line prep standards.", level: .level3),
                    AnswerOption(id: "C", text: "De-escalate with complete table ownership and genuine care, provide an immediate solution that turns the experience around, and then conduct a root-cause review of kitchen temperature logging to fix the issue permanently.", level: .level5),
                    AnswerOption(id: "D", text: "Apologize for the wait, take the raw item off the bill, and explain to the customer that the kitchen is very busy tonight.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q6",
                questionNumber: 6,
                competency: "Customer & Personal Service (Hospitality Standards)",
                onetMetric: "Importance = 88",
                weightPercentage: 11.38,
                scenario: "You are opening a new restaurant concept and want to make sure every guest receives consistently high service, even when the dining room is completely full. How do you set up your team for success?",
                options: [
                    AnswerOption(id: "A", text: "Design an end-to-end guest experience architecture: implement customer preference tracking in your reservation software (allergies, special dates), train staff on micro-hospitality cues, and monitor live guest feedback metrics after every shift.", level: .level5),
                    AnswerOption(id: "B", text: "Tell staff to be friendly, greet guests within two minutes of sitting down, and make sure water glasses stay full.", level: .level1),
                    AnswerOption(id: "C", text: "Create standard service guidelines (greeting times, menu explanation steps, table check-ins) and hold daily pre-shift meetings to review customer service expectations.", level: .level2),
                    AnswerOption(id: "D", text: "Build a clear Service SOP manual covering table visits, tasting notes, and handling dietary needs, and run regular role-playing training sessions so servers handle busy shifts with confidence.", level: .level3)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q7",
                questionNumber: 7,
                competency: "Dependability (Unplanned Absence Management)",
                onetMetric: "Impact = 88",
                weightPercentage: 11.38,
                scenario: "On the morning of a holiday weekend brunch rush, your head prep cook and dishwasher both fail to show up or answer their phones. How do you keep operations running smoothly?",
                options: [
                    AnswerOption(id: "A", text: "Activate your on-call backup list, reassign non-essential prep duties to line cooks, deploy a temporary paper-ware strategy for heavy rush periods if needed, and adjust station assignments.", level: .level3),
                    AnswerOption(id: "B", text: "Call extra staff to see if anyone can come in, and jump in yourself to cover prep or dishwashing whenever things get backed up.", level: .level2),
                    AnswerOption(id: "C", text: "Execute a formal cross-department labor contingency plan: shift back-of-house roles dynamically using cross-trained staff, adjust kitchen prep priorities to focus strictly on top-selling menu items, and update shift rosters to prevent burnout.", level: .level5),
                    AnswerOption(id: "D", text: "Step into the kitchen yourself to handle prep and wash dishes throughout the shift while hoping the rest of the team can manage the front.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q8",
                questionNumber: 8,
                competency: "Integrity (Food Safety & Hygiene Governance)",
                onetMetric: "Impact = 59",
                weightPercentage: 7.63,
                scenario: "During a busy shift, you notice a line cook using the same cutting board for raw poultry and cooked vegetables without washing and sanitizing it first to save time. What do you do?",
                options: [
                    AnswerOption(id: "A", text: "Immediately stop the cook, discard any contaminated food items, sanitize the station right away, and conduct a mandatory food-safety retraining session for the entire kitchen before their next shift.", level: .level3),
                    AnswerOption(id: "B", text: "Halt production at the station instantly, toss affected ingredients, clean the area, and implement a digital temperature and food safety check system with automated station logs and strict compliance audits.", level: .level5),
                    AnswerOption(id: "C", text: "Remind the cook on the spot to wash the board next time and make sure they switch boards before working on vegetables.", level: .level1),
                    AnswerOption(id: "D", text: "Tell the cook to stop immediately, throw away the vegetables on that board, clean the station, and document the incident in the kitchen shift log.", level: .level2)
                ]
            )
    ]

    private static let partThree: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "restaurant_q9",
                questionNumber: 9,
                competency: "Stress Tolerance (Dinner Rush Chaos)",
                onetMetric: "Impact = 68",
                weightPercentage: 8.80,
                scenario: "A printer in the kitchen goes down during the busiest hour of the week, printing duplicate tickets and missing items, leading to confused cooks, shouting on the line, and mounting guest delays. How do you lead through this?",
                options: [
                    AnswerOption(id: "A", text: "Step up to the expediting pass, maintain a calm voice, transition the kitchen to a manual verbal order-calling system using printed backup tickets, and assign one floor manager to keep servers updated.", level: .level3),
                    AnswerOption(id: "B", text: "Tell everyone to stay calm, try to restart the printer, and manually cross off orders on physical tickets as they come out.", level: .level2),
                    AnswerOption(id: "C", text: "Maintain total composure and execute an offline service protocol: take control of the expediting station, delegate clear backup roles for runner verification, keep front-of-house informed, and bring in tech support to fix the underlying hardware glitch.", level: .level5),
                    AnswerOption(id: "D", text: "Try to fix the printer yourself while telling kitchen staff to figure out which orders were already cooked.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q10",
                questionNumber: 10,
                competency: "Stress Tolerance (Sustained Operational Crisis)",
                onetMetric: "Impact = 68",
                weightPercentage: 8.80,
                scenario: "A major road construction project right outside your restaurant blocks main access and parking for four consecutive weeks, dropping walk-in customer volume by 35% and threatening your cash flow. How do you navigate this high-pressure situation?",
                options: [
                    AnswerOption(id: "A", text: "Cut down shift hours slightly and wait for the construction work to finish while managing daily costs as tightly as possible.", level: .level1),
                    AnswerOption(id: "B", text: "Focus on keeping team morale steady, run a temporary social media discount campaign to attract guests despite the roadwork, and adjust weekly fresh food orders to minimize waste.", level: .level2),
                    AnswerOption(id: "C", text: "Maintain strategic focus: launch a targeted curbside pickup program with clear detour signs, partner with local delivery apps, negotiate short-term terms with suppliers, and adjust staff schedules to match modified peak hours.", level: .level3),
                    AnswerOption(id: "D", text: "Pivot your business model during the crisis: launch a temporary high-margin delivery/catering service, run hyper-local digital ads with special parking directions, renegotiate vendor credit terms, and restructure menu items to protect cash flow.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "restaurant_q11",
                questionNumber: 11,
                competency: "Attention to Detail (Recipe & Recipe Costing Accuracy)",
                onetMetric: "Impact = 73",
                weightPercentage: 9.54,
                scenario: "You are updating your core restaurant menu across 30+ items with complex ingredient sub-recipes, allergen tags, and precise unit costs. How do you ensure accuracy before printing and launching?",
                options: [
                    AnswerOption(id: "A", text: "Read through the menu draft once to catch obvious typos, price mistakes, or missing ingredients.", level: .level1),
                    AnswerOption(id: "B", text: "Review recipe cost sheets line by line against current supplier prices, verify allergen disclaimers with the kitchen chef, and double-check menu prices against your target food cost percentage.", level: .level2),
                    AnswerOption(id: "C", text: "Build an automated recipe-costing database that tracks live ingredient price changes, automatically calculates plate margins, flags potential allergen cross-contaminations, and cross-checks menu pricing across digital and print formats.", level: .level5),
                    AnswerOption(id: "D", text: "Perform a systematic audit: weigh sub-recipe yields in the kitchen, cross-reference item costs against actual supplier invoices, run test orders on your POS system, and review printed drafts for complete allergen accuracy.", level: .level3)
                ]
            )
    ]
}
