//
//  RetailQuestions.swift
//  Venture Readiness Assessment
//
//  Retail / eCommerce — 11 questions (Part 1: Q1-4, Part 2: Q5-8, Part 3: Q9-11).
//  Split into its own file with explicitly-typed sub-arrays so the Swift
//  compiler type-checks it in small pieces instead of one giant literal
//  (a single huge nested array/dictionary literal is a known cause of
//  "Build Failed" / process killed with no visible error in Xcode).
//

import Foundation

enum RetailQuestionData {

    static let questionSet = CategoryQuestionSet(
        partOne: partOne,
        partTwo: partTwo,
        partThree: partThree
    )

    private static let partOne: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "retail_q1",
                questionNumber: 1,
                competency: "Administration & Management (Operations & Peak Planning)",
                onetMetric: "Importance = 87",
                weightPercentage: 10.86,
                scenario: "An upcoming holiday weekend is projected to increase both store foot traffic and online order volume for same-day store pickup by 40%. How do you prepare your operations?",
                options: [
                    AnswerOption(id: "A", text: "Review last year's sales data, adjust employee shift schedules for peak hours, and set up a dedicated staging area near customer service for quick order pickups.", level: .level2),
                    AnswerOption(id: "B", text: "Build an integrated multi-channel labor strategy, re-adjust inventory safety-stock levels in your system to avoid overselling online, and designate clear leads for store fulfillment vs. sales floor customer service.", level: .level3),
                    AnswerOption(id: "C", text: "Build an automated cross-channel contingency setup that routes online orders to backup regional hubs if store staging hits capacity, while using real-time POS data to balance store staff automatically.", level: .level5),
                    AnswerOption(id: "D", text: "Restock store shelves during downtime and handle online pickup orders at the front desk whenever they come in.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q2",
                questionNumber: 2,
                competency: "Administration & Management (Fulfillment Optimization)",
                onetMetric: "Importance = 87",
                weightPercentage: 10.86,
                scenario: "Your e-commerce fulfillment team is seeing a 15% increase in packing errors during promotional rushes, leading to shipping delays and costly customer returns. How do you fix this?",
                options: [
                    AnswerOption(id: "A", text: "Re-organize packing stations into separate single-item and multi-item lanes, mandate barcode scans before shipping labels print, and track error rates by shift.", level: .level3),
                    AnswerOption(id: "B", text: "Re-arrange top-selling promotional items closer to packing tables and inspect barcode scanners to make sure hardware is working right.", level: .level2),
                    AnswerOption(id: "C", text: "Tell packing staff to pay closer attention and double-check physical items against packing slips before taping boxes shut.", level: .level1),
                    AnswerOption(id: "D", text: "Conduct an end-to-end operational bottleneck audit in your Warehouse Management System (WMS), redesign packing layouts to improve ergonomics, and align with marketing to spread out promotion launch times.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q3",
                questionNumber: 3,
                competency: "Personnel & Human Resources (Team Engagement)",
                onetMetric: "Importance = 58",
                weightPercentage: 7.24,
                scenario: "A reliable sales associate has shown a drop in performance over the past month and seems disengaged during morning team check-ins. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Schedule a private 1-on-1 meeting to review recent trends, ask open questions to understand what's wrong, and offer supportive coaching or temporary schedule changes.", level: .level2),
                    AnswerOption(id: "B", text: "Remind the employee about their sales and service targets during shift change and encourage them to bring their energy back up.", level: .level1),
                    AnswerOption(id: "C", text: "Run a structured coaching conversation to identify if the issue is burnout, training gaps, or operational friction, create an action plan together, and schedule regular check-ins.", level: .level3),
                    AnswerOption(id: "D", text: "Evaluate team-wide workload data to see if burnout is widespread, adjust department scheduling rules, and build a cross-training career pathway program to keep experienced staff motivated.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q4",
                questionNumber: 4,
                competency: "Time Management (Priority Triage under Pressure)",
                onetMetric: "Importance = 53",
                weightPercentage: 6.62,
                scenario: "At 9:00 AM on a Friday, four issues hit at once: a delivery truck arrives at the back dock, three customers are waiting at returns, a pickup system error pops up, and a weekly sales report is due by noon. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Handle tasks in the order they arrived—start by unloading the truck, then head to the returns desk, and take care of the rest later.", level: .level1),
                    AnswerOption(id: "B", text: "Prioritize by customer impact: fix the order pickup system error first, assign cross-trained staff to handle the dock and returns desk, and ask management for a brief extension on the report.", level: .level3),
                    AnswerOption(id: "C", text: "Help the customers at returns immediately, ask the inventory lead to handle the delivery truck, and reserve 11:00 AM to write the sales report.", level: .level2),
                    AnswerOption(id: "D", text: "Activate a rapid triage protocol: deploy floor leads to handle the dock and customer service simultaneously, switch order pickups to manual lookup mode to keep lines moving, and submit system diagnostic logs to IT.", level: .level5)
                ]
            )
    ]

    private static let partTwo: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "retail_q5",
                questionNumber: 5,
                competency: "Customer & Personal Service (Escalation Recovery)",
                onetMetric: "Importance = 96",
                weightPercentage: 11.99,
                scenario: "A customer arrives in-store upset because their \"ready for pickup\" online order cannot be found anywhere in stock. How do you resolve this?",
                options: [
                    AnswerOption(id: "A", text: "Take full responsibility: apologize, set up free expedited home shipping, give an in-store credit for the hassle, and audit the stockroom to correct the inventory count error.", level: .level3),
                    AnswerOption(id: "B", text: "Apologize for the trouble, check nearby store inventory on your computer, and arrange free home delivery from another location.", level: .level2),
                    AnswerOption(id: "C", text: "Resolve the customer's issue immediately using same-day courier dispatch at your expense, then run a root-cause audit on your inventory sync system to prevent \"ghost stock\" errors in the future.", level: .level5),
                    AnswerOption(id: "D", text: "Let the customer know the system showed wrong inventory counts and issue a full refund to their credit card.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q6",
                questionNumber: 6,
                competency: "Customer & Personal Service (Proactive Service Systems)",
                onetMetric: "Importance = 96",
                weightPercentage: 11.99,
                scenario: "Your e-commerce business is preparing for a flash sale where customer support inquiries are expected to quadruple. How do you prepare your support setup?",
                options: [
                    AnswerOption(id: "A", text: "Create canned email templates for common questions and adjust team working hours to cover busy support windows.", level: .level2),
                    AnswerOption(id: "B", text: "Set up automated SMS tracking updates for customers, deploy smart routing for urgent support tickets, and build a real-time dashboard to track response SLA times.", level: .level5),
                    AnswerOption(id: "C", text: "Keep the support inbox open during the sale and work extra hours to clear tickets as fast as you can.", level: .level1),
                    AnswerOption(id: "D", text: "Update your site's self-service Help Center, add an automated tracking widget to the chat system, and train support staff on quick resolution shortcuts.", level: .level3)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q7",
                questionNumber: 7,
                competency: "Dependability (Unplanned Absences)",
                onetMetric: "Impact = 87",
                weightPercentage: 10.86,
                scenario: "Thirty minutes before opening on a busy Saturday, two key floor associates call in sick, leaving your store significantly short-staffed. What is your immediate operational plan?",
                options: [
                    AnswerOption(id: "A", text: "Call in designated backup staff, move remaining team members to high-traffic checkout zones, and move non-essential morning tasks like shelf restocking to the evening shift.", level: .level3),
                    AnswerOption(id: "B", text: "Open the doors on time and jump onto the registers or floor yourself whenever things get busy.", level: .level1),
                    AnswerOption(id: "C", text: "Execute an emergency cross-department labor plan: shift back-of-house staff to the floor, adjust online order fulfillment SLAs temporarily to avoid delivery breaches, and rebalance the weekly schedule.", level: .level5),
                    AnswerOption(id: "D", text: "Reach out to off-duty staff to ask for shift coverage, while reprioritizing morning duties to focus strictly on register setup and opening the front doors.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q8",
                questionNumber: 8,
                competency: "Integrity (Policy Compliance & Loss Prevention)",
                onetMetric: "Impact = 65",
                weightPercentage: 8.11,
                scenario: "You discover an employee has been overriding standard return policies to grant full cash refunds for non-returnable items, simply to keep their personal customer review scores high. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Meet with the associate privately to review the flagged returns, explain how unauthorized overrides hurt store profit margins, and issue a formal verbal warning.", level: .level2),
                    AnswerOption(id: "B", text: "Conduct an audit of supervisor permissions across your system, address the policy breach through formal compliance channels, and update system permission rules to prevent unauthorized overrides.", level: .level5),
                    AnswerOption(id: "C", text: "Remind the associate during a break about standard return rules and ask them to follow policy going forward.", level: .level1),
                    AnswerOption(id: "D", text: "Audit the employee's return transaction history, calculate the financial impact, follow standard disciplinary procedures, and re-train the team on balanced policy enforcement.", level: .level3)
                ]
            )
    ]

    private static let partThree: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "retail_q9",
                questionNumber: 9,
                competency: "Stress Tolerance (Crisis Management)",
                onetMetric: "Impact = 60",
                weightPercentage: 7.49,
                scenario: "During a peak shopping afternoon, your store's main checkout network crashes unexpectedly. Lines are growing, customers are frustrated, and your team is getting stressed. How do you lead through this?",
                options: [
                    AnswerOption(id: "A", text: "Maintain steady leadership: deploy floor leads to update waiting customers and pass out small courtesies (like bottled water), set up manual checkout steps, and communicate directly with tech support.", level: .level3),
                    AnswerOption(id: "B", text: "Stay calm, walk down the checkout lines to apologize to waiting customers, and ask them to be patient while IT fixes the issue.", level: .level1),
                    AnswerOption(id: "C", text: "Execute a comprehensive crisis protocol: transition checkouts instantly to offline processing mode, reassign floor staff to clear line bottlenecks, provide clear reassuring directions to staff, and run a post-incident review to build system backup resiliency.", level: .level5),
                    AnswerOption(id: "D", text: "Keep a calm presence, direct staff to use standalone offline card readers or manual entry options, and keep employees focused on line management.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q10",
                questionNumber: 10,
                competency: "Stress Tolerance (Sustained Operational Pressure)",
                onetMetric: "Impact = 60",
                weightPercentage: 7.49,
                scenario: "Your e-commerce store faces three consecutive weeks of shipping carrier delays during Q4. Customer complaints are mounting, negative reviews are spiking, and sales targets are at risk. How do you manage this pressure?",
                options: [
                    AnswerOption(id: "A", text: "Stay focused on answering customer support tickets politely and professionally without letting the surrounding stress get to you.", level: .level1),
                    AnswerOption(id: "B", text: "Maintain strategic composure: launch proactive email updates with discount codes for future purchases to affected buyers, while onboarding secondary regional shipping carriers to clear logistics backlogs.", level: .level3),
                    AnswerOption(id: "C", text: "Keep your personal composure, hold daily team huddles to keep morale high, and place clear shipping delay notices across your website checkout pages.", level: .level2),
                    AnswerOption(id: "D", text: "Drive cross-functional crisis management: re-negotiate carrier SLAs, pivot marketing campaigns toward digital gift cards to protect revenue, and turn your customer support team into a proactive brand-retention asset.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "retail_q11",
                questionNumber: 11,
                competency: "Attention to Detail (Data Integrity & Catalog Audit)",
                onetMetric: "Impact = 67",
                weightPercentage: 8.36,
                scenario: "You are auditing a product catalog feed containing 10,000+ promotional SKUs, custom discount rules, and tier prices before a global sales event goes live. How do you execute this task?",
                options: [
                    AnswerOption(id: "A", text: "Run structured audit sampling across all product categories, test complex promo rules (like stackable coupons or exclusions), and verify catalog sync accuracy between your inventory software and website checkout.", level: .level3),
                    AnswerOption(id: "B", text: "Review category pricing spreadsheets line-by-line across main product lines to catch typos or obvious pricing mistakes.", level: .level2),
                    AnswerOption(id: "C", text: "Spot-check top-selling products on the website staging view to make sure prices match your marketing banners.", level: .level1),
                    AnswerOption(id: "D", text: "Run automated validation scripts across all 10,000+ SKUs to test edge cases, multi-currency conversions, tax settings, stackable discount codes, and stock reservation limits before going live.", level: .level5)
                ]
            )
    ]
}
