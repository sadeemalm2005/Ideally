//
//  ResidentialServicesQuestions.swift
//  Venture Readiness Assessment
//
//  Residential & Commercial Services — 11 questions (Part 1: Q1-4, Part 2: Q5-8, Part 3: Q9-11).
//  Split into its own file with explicitly-typed sub-arrays so the Swift
//  compiler type-checks it in small pieces instead of one giant literal
//  (a single huge nested array/dictionary literal is a known cause of
//  "Build Failed" / process killed with no visible error in Xcode).
//

import Foundation

enum ResidentialServicesQuestionData {

    static let questionSet = CategoryQuestionSet(
        partOne: partOne,
        partTwo: partTwo,
        partThree: partThree
    )

    private static let partOne: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "residential_q1",
                questionNumber: 1,
                competency: "Administration & Management (Estimating & Margin Control)",
                onetMetric: "Importance = 78",
                weightPercentage: 10.80,
                scenario: "Material costs and equipment rental rates have spiked by 12% over the last quarter, eroding your profit margins on active commercial service contracts. How do you protect your bottom line?",
                options: [
                    AnswerOption(id: "A", text: "Ask your crews to work faster on site to save on labor hours and balance out the material cost increase.", level: .level1),
                    AnswerOption(id: "B", text: "Audit your job costing software, renegotiate bulk supplier rates, and build dynamic labor-and-material escalation clauses into all future commercial contracts.", level: .level3),
                    AnswerOption(id: "C", text: "Implement real-time mobile job-cost tracking connected directly to your bidding platform, automatically adjusting active project margins and flagging price shifts before purchase orders generate.", level: .level5),
                    AnswerOption(id: "D", text: "Review recent job invoices, check supplier price lists, and update your standard project quote templates to reflect the higher material costs.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q2",
                questionNumber: 2,
                competency: "Administration & Management (Equipment & Subcontractor Coordination)",
                onetMetric: "Importance = 78",
                weightPercentage: 10.80,
                scenario: "A commercial client needs a major multi-site service completed in three days, requiring specialized heavy equipment rentals and two third-party subcontractor crews. How do you coordinate operations?",
                options: [
                    AnswerOption(id: "A", text: "Assign a dedicated field lead to supervise sub-crews, create a shared schedule for equipment drop-offs, and conduct daily end-of-day site walk-throughs.", level: .level2),
                    AnswerOption(id: "B", text: "Deploy a centralized dispatch hub that tracks sub-crew GPS check-ins, monitors digital equipment maintenance logs, and enforces mandatory milestone sign-offs before payments release.", level: .level5),
                    AnswerOption(id: "C", text: "Hire the subcontractors, reserve the equipment for the requested dates, and ask the site supervisor to call you if any delays pop up.", level: .level1),
                    AnswerOption(id: "D", text: "Set up written service-level agreements with subcontractors, coordinate staggered equipment delivery times to prevent site clutter, and enforce strict daily milestone check-ins.", level: .level3)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q3",
                questionNumber: 3,
                competency: "Personnel & Human Resources (Field Crew Management)",
                onetMetric: "Importance = 51",
                weightPercentage: 7.06,
                scenario: "Experienced technicians on your team are getting frustrated because newer hires are making frequent errors on job sites, leading to customer callbacks and extra rework. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Pair new hires with senior technicians in a structured mentorship system, create clear digital job site checklists, and conduct monthly hands-on skill reviews.", level: .level3),
                    AnswerOption(id: "B", text: "Build a tiered skill-progression model with performance-based pay bumps, digital training modules, and cross-training certifications across field operations.", level: .level5),
                    AnswerOption(id: "C", text: "Tell senior technicians to keep an eye on new hires during field jobs and show them how to do things right.", level: .level1),
                    AnswerOption(id: "D", text: "Talk to the senior techs during morning dispatch, review proper installation steps with the whole team, and offer quick refresher training to new hires.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q4",
                questionNumber: 4,
                competency: "Time Management (Route & Shift Scheduling)",
                onetMetric: "Importance = 60",
                weightPercentage: 8.31,
                scenario: "Your dispatch schedule is packed, but unexpected traffic delays and extended job times are forcing field crews to run late for afternoon residential appointments. How do you fix this dispatch bottleneck?",
                options: [
                    AnswerOption(id: "A", text: "Tell field technicians to try to finish their morning jobs faster and call customers if they are running behind schedule.", level: .level1),
                    AnswerOption(id: "B", text: "Re-organize service routes by geographic zip codes, build 30-minute buffer zones between morning and afternoon shifts, and assign a dispatcher to update waiting clients.", level: .level2),
                    AnswerOption(id: "C", text: "Implement dynamic GPS route-optimization software that adjusts crew schedules in real time, sends automated SMS tracking links to clients, and dynamically reassigns nearby crews to delayed jobs.", level: .level5),
                    AnswerOption(id: "D", text: "Standardize job-time estimates based on property size, group service calls strictly by territory, and route emergency calls to a dedicated floating backup crew.", level: .level3)
                ]
            )
    ]

    private static let partTwo: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "residential_q5",
                questionNumber: 5,
                competency: "Customer & Personal Service (Property Damage Disputes)",
                onetMetric: "Importance = 68",
                weightPercentage: 9.42,
                scenario: "A commercial property manager calls angrily, claiming your field crew scratched custom flooring while servicing equipment, and demands immediate repair reimbursement and a contract cancellation. How do you respond?",
                options: [
                    AnswerOption(id: "A", text: "Personally visit the site immediately, review pre-job photos, express genuine concern, arrange for a certified repair specialist at your expense, and file an incident report to review crew protection protocols.", level: .level3),
                    AnswerOption(id: "B", text: "Apologize for the issue, ask your insurance agent to handle the claim, and offer a discount on their next monthly service bill.", level: .level2),
                    AnswerOption(id: "C", text: "Provide high-touch executive resolution on-site, handle repairs immediately through trusted partners, and integrate mandatory digital pre/post-job photo logs into field apps to eliminate liability gaps.", level: .level5),
                    AnswerOption(id: "D", text: "Ask the crew if they caused the damage and let the client know they can send an invoice if they have proof.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q6",
                questionNumber: 6,
                competency: "Customer & Personal Service (Recurring Service Contracts)",
                onetMetric: "Importance = 68",
                weightPercentage: 9.42,
                scenario: "You want to secure multi-year maintenance contracts with residential HOA boards and commercial property managers. How do you build a service delivery model that ensures high renewal rates?",
                options: [
                    AnswerOption(id: "A", text: "Offer affordable pricing, send friendly monthly service reminders, and address client requests quickly whenever they call in.", level: .level1),
                    AnswerOption(id: "B", text: "Provide standard written service guarantees, offer quarterly property inspection reports, and assign a dedicated account manager for commercial accounts.", level: .level2),
                    AnswerOption(id: "C", text: "Establish clear Service Level Agreements (SLAs), send automated post-service reports with before/after photos, and schedule formal quarterly review meetings with property boards.", level: .level3),
                    AnswerOption(id: "D", text: "Build a client portal offering real-time work-order tracking, automated preventative maintenance scheduling, transparent reporting metrics, and customized multi-year contract options.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q7",
                questionNumber: 7,
                competency: "Dependability (Emergency Service Continuity)",
                onetMetric: "Impact = 73",
                weightPercentage: 10.11,
                scenario: "On the coldest morning of the year, two key service vans suffer engine failures simultaneously, leaving your team unable to reach several urgent commercial service calls. How do you handle this?",
                options: [
                    AnswerOption(id: "A", text: "Execute a fleet backup protocol: rent replacement utility vehicles immediately, reassign low-priority maintenance visits to later in the week, and dispatch senior techs to high-priority emergency calls.", level: .level3),
                    AnswerOption(id: "B", text: "Call off-duty techs to see if they can use personal vehicles, and reschedule morning appointments for the afternoon.", level: .level2),
                    AnswerOption(id: "C", text: "Have available crews pair up in remaining vans and do your best to reach as many client sites as possible during the day.", level: .level1),
                    AnswerOption(id: "D", text: "Trigger a full fleet contingency plan: automatically reroute standby third-party contractors, shift mobile field inventory using live app tracking, and notify affected clients with revised delivery windows.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q8",
                questionNumber: 8,
                competency: "Integrity (Safety & Regulatory Compliance)",
                onetMetric: "Impact = 65",
                weightPercentage: 9.00,
                scenario: "You discover that a lead technician skipped required safety lock-out procedures and hazardous waste disposal rules on a commercial job site to finish the project an hour early. What action do you take?",
                options: [
                    AnswerOption(id: "A", text: "Halt work at the site, safely correct the compliance hazard immediately, document the incident according to company policy, issue a formal reprimand, and re-train field crews on safety standards.", level: .level3),
                    AnswerOption(id: "B", text: "Remind the technician at the end of the shift about OSHA and environmental rules and tell them not to skip safety steps again.", level: .level1),
                    AnswerOption(id: "C", text: "Immediately audit the site, implement a digital safety sign-off system requiring photo validation before jobs can be marked complete, and conduct mandatory safety recertification.", level: .level5),
                    AnswerOption(id: "D", text: "Speak to the technician privately, review the safety manual with them, and log the incident in your internal company records.", level: .level2)
                ]
            )
    ]

    private static let partThree: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "residential_q9",
                questionNumber: 9,
                competency: "Stress Tolerance (Equipment Breakdown in the Field)",
                onetMetric: "Impact = 69",
                weightPercentage: 9.56,
                scenario: "During a major commercial job with a tight deadline, your main diagnostic equipment breaks down on site. The client is watching, and your crew is standing by idly. How do you lead in this moment?",
                options: [
                    AnswerOption(id: "A", text: "Maintain complete composure, execute a tool-swap backup plan by dispatching a secondary rig, clearly inform the client of the updated timeline, and keep your crew focused on prep work.", level: .level3),
                    AnswerOption(id: "B", text: "Stay composed under pressure, deploy backup manual diagnostic procedures, coordinate swift gear replacement via local supply networks, and run a post-job tool resiliency review.", level: .level5),
                    AnswerOption(id: "C", text: "Try to fix the machine on site while asking the client to give you some time to figure things out.", level: .level1),
                    AnswerOption(id: "D", text: "Keep your cool, call the shop to send a replacement tool, and assign your crew to clean up the site while waiting for the gear to arrive.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q10",
                questionNumber: 10,
                competency: "Stress Tolerance (Weather Disruption & Backlog)",
                onetMetric: "Impact = 69",
                weightPercentage: 9.56,
                scenario: "Three straight days of severe weather force you to cancel all exterior service calls, creating a massive backlog of 50+ delayed residential and commercial jobs while angry clients demand updates. How do you handle the pressure?",
                options: [
                    AnswerOption(id: "A", text: "Work late hours yourself answering phone calls and trying to fit rescheduled jobs into the calendar as fast as possible.", level: .level1),
                    AnswerOption(id: "B", text: "Stay steady under pressure: deploy automated mass-SMS scheduling updates, prioritize commercial SLA accounts and high-urgency residential needs, and schedule temporary weekend makeup shifts.", level: .level3),
                    AnswerOption(id: "C", text: "Maintain strategic control: deploy dynamic scheduling algorithms to absorb backlogs, partner with vetted seasonal contractors to scale field capacity, and turn service delays into client trust moments through clear communication.", level: .level5),
                    AnswerOption(id: "D", text: "Keep personal composure, host a team morning meeting to plan makeup schedules, and post weather delay notices on your company website and social channels.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "residential_q11",
                questionNumber: 11,
                competency: "Attention to Detail (Scope Verification & Final QA)",
                onetMetric: "Impact = 67",
                weightPercentage: 9.28,
                scenario: "You are establishing quality control procedures for a team servicing high-end commercial properties with strict service specifications. How do you ensure no details are missed?",
                options: [
                    AnswerOption(id: "A", text: "Remind field leads to double-check their work before leaving a client site and sign off on physical job sheets.", level: .level1),
                    AnswerOption(id: "B", text: "Create standard written job completion checklists, conduct random weekly supervisor site audits, and review client feedback forms.", level: .level2),
                    AnswerOption(id: "C", text: "Build mandatory digital field inspection apps requiring before/after photos, automated parameter readings, and client sign-offs before work orders can close.", level: .level3),
                    AnswerOption(id: "D", text: "Design an automated Quality Assurance architecture featuring smart field validation checks, machine-analyzed image audits, real-time client satisfaction scoring, and dynamic technician quality ratings.", level: .level5)
                ]
            )
    ]
}
