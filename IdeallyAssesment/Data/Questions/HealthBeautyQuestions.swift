//
//  HealthBeautyQuestions.swift
//  Venture Readiness Assessment
//
//  Health, Beauty & Fitness — 11 questions (Part 1: Q1-4, Part 2: Q5-8, Part 3: Q9-11).
//  Split into its own file with explicitly-typed sub-arrays so the Swift
//  compiler type-checks it in small pieces instead of one giant literal
//  (a single huge nested array/dictionary literal is a known cause of
//  "Build Failed" / process killed with no visible error in Xcode).
//

import Foundation

enum HealthBeautyQuestionData {

    static let questionSet = CategoryQuestionSet(
        partOne: partOne,
        partTwo: partTwo,
        partThree: partThree
    )

    private static let partOne: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "health_beauty_q1",
                questionNumber: 1,
                competency: "Administration & Management (Overhead & Profit Margins)",
                onetMetric: "Importance = 80",
                weightPercentage: 10.14,
                scenario: "Rising retail product costs, utility bills, and linen service fees are eating into your studio/salon's net profit margins. How do you protect your operational viability?",
                options: [
                    AnswerOption(id: "A", text: "Review service profitability sheets, adjust retail product markups, renegotiate bulk distributor contracts, and introduce tiered service pricing based on practitioner experience.", level: .level3),
                    AnswerOption(id: "B", text: "Tell staff to use fewer supplies during client services and turn off lights in empty treatment rooms to save energy.", level: .level1),
                    AnswerOption(id: "C", text: "Implement integrated studio management software that tracks back-bar product usage per service, automates reordering based on appointment volume, and dynamically calculates real-time profit margins per station.", level: .level5),
                    AnswerOption(id: "D", text: "Sit down with your lead staff to check monthly supplier invoices, review retail pricing, and trim small unnecessary expenses.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q2",
                questionNumber: 2,
                competency: "Administration & Management (Capacity & Space Utilization)",
                onetMetric: "Importance = 80",
                weightPercentage: 10.14,
                scenario: "Your wellness studio or salon is turning away clients on evenings and weekends, but treatment rooms/stations sit half-empty on weekday mornings. How do you optimize facility usage?",
                options: [
                    AnswerOption(id: "A", text: "Offer off-peak pricing discounts for morning appointments, introduce corporate wellness packages for local businesses, and re-align staff shift availability.", level: .level3),
                    AnswerOption(id: "B", text: "Tell front desk staff to encourage calling clients to book morning times instead of busy weekend slots.", level: .level1),
                    AnswerOption(id: "C", text: "Build dynamic yield-management booking software that automatically adjusts off-peak pricing, creates automated targeted marketing campaigns for open time slots, and maximizes revenue per available room/station.", level: .level5),
                    AnswerOption(id: "D", text: "Run a social media promo for weekday morning visits and ask team members if anyone wants to adjust their weekly work schedule.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q3",
                questionNumber: 3,
                competency: "Personnel & Human Resources (Practitioner Retention & Compensation)",
                onetMetric: "Importance = 64",
                weightPercentage: 8.11,
                scenario: "High-performing trainers, stylists, or therapists are being recruited by competitor facilities offering better commission rates, risking a loss of key staff and their loyal clients. How do you keep your top talent?",
                options: [
                    AnswerOption(id: "A", text: "Offer a small commission increase for top performers and host monthly team dinners to build studio morale.", level: .level2),
                    AnswerOption(id: "B", text: "Create a competitive tiered compensation model with performance bonuses, offer clear career paths (e.g., master practitioner/education leads), and provide continuing education subsidies.", level: .level3),
                    AnswerOption(id: "C", text: "Match competitor commission offers whenever a staff member mentions leaving or threatening to quit.", level: .level1),
                    AnswerOption(id: "D", text: "Design a profit-sharing equity model, grant flexible schedule autonomy supported by automated booking tools, and build a culture focused on mentorship and professional development.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q4",
                questionNumber: 4,
                competency: "Time Management (No-Show & Schedule Optimization)",
                onetMetric: "Importance = 69",
                weightPercentage: 8.75,
                scenario: "Late client arrivals and last-minute booking cancellations are creating dead time for practitioners and throwing off appointment times for the rest of the day. How do you solve this revenue drain?",
                options: [
                    AnswerOption(id: "A", text: "Deploy dynamic schedule management software that sends 2-way SMS confirmation prompts, automatically enforces deposit policies, and auto-fills open cancellation slots from a live waitlist.", level: .level5),
                    AnswerOption(id: "B", text: "Ask front desk staff to call clients the day before appointments to confirm their booking times.", level: .level1),
                    AnswerOption(id: "C", text: "Create a clear 24-hour cancellation policy, collect credit cards upon booking for deposit holds, and set up automated SMS appointment reminders 48 hours prior.", level: .level3),
                    AnswerOption(id: "D", text: "Put up a printed cancellation policy sign at the front desk and charge a small fee to clients who miss appointments without notice.", level: .level2)
                ]
            )
    ]

    private static let partTwo: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "health_beauty_q5",
                questionNumber: 5,
                competency: "Customer & Personal Service (Service Recovery)",
                onetMetric: "Importance = 82",
                weightPercentage: 10.39,
                scenario: "A long-time client is unhappy with a high-end treatment or service outcome, expressing frustration to front desk staff and threatening to leave negative online reviews. How do you handle service recovery?",
                options: [
                    AnswerOption(id: "A", text: "Take immediate personal ownership in a private room: listen empathetically, offer a complimentary corrective treatment with a master practitioner or a full refund, and review service protocols with the staff member involved.", level: .level3),
                    AnswerOption(id: "B", text: "Apologize for the outcome, offer a 20% discount on their next visit, and promise to speak with the practitioner.", level: .level2),
                    AnswerOption(id: "C", text: "Deliver empathetic, high-touch resolution instantly, provide immediate complete service recovery, and log the issue into an automated client preference management system to prevent repeat errors studio-wide.", level: .level5),
                    AnswerOption(id: "D", text: "Tell the client that results vary from person to person and offer to re-book them at regular price.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q6",
                questionNumber: 6,
                competency: "Customer & Personal Service (Client Loyalty & Retention)",
                onetMetric: "Importance = 82",
                weightPercentage: 10.39,
                scenario: "You want to increase repeat visits and build a sustainable recurring membership revenue stream for your facility. How do you design your client experience?",
                options: [
                    AnswerOption(id: "A", text: "Hand out paper loyalty punch cards at the front desk and offer a free service after 10 paid visits.", level: .level1),
                    AnswerOption(id: "B", text: "Create a structured recurring monthly membership program with tiered perks, automated re-booking prompts at checkout, and customized VIP reward tiers.", level: .level3),
                    AnswerOption(id: "C", text: "Deploy a personalized client management system that tracks personal service history, auto-triggers birthday/anniversary offers, rewards referrals digitally, and manages recurring membership tiers.", level: .level5),
                    AnswerOption(id: "D", text: "Offer discounted service packages when clients buy multiple sessions up front, and train staff to ask for re-bookings at checkout.", level: .level2)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q7",
                questionNumber: 7,
                competency: "Dependability (Facility Operational Readiness)",
                onetMetric: "Impact = 84",
                weightPercentage: 10.65,
                scenario: "Thirty minutes before opening on a fully booked Saturday, your facility suffers a hot water heater failure, leaving treatment rooms or wash stations without hot water. How do you handle this operational crisis?",
                options: [
                    AnswerOption(id: "A", text: "Execute a facility contingency plan: bring in an emergency plumber, call nearby sister locations or partner facilities to temporarily shift morning clients, and notify affected guests with re-booking options and service credits.", level: .level3),
                    AnswerOption(id: "B", text: "Call an emergency repair technician, tell front desk staff to push morning appointment times back, and apologize to arriving guests.", level: .level2),
                    AnswerOption(id: "C", text: "Cancel morning appointments, tell arriving clients about the issue, and try to reschedule them once the hot water is fixed.", level: .level1),
                    AnswerOption(id: "D", text: "Trigger an immediate operational crisis plan: execute rapid hardware bypass protocols, route high-priority client bookings to pre-vetted nearby locations via integrated software, and keep clients updated with clear notifications.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q8",
                questionNumber: 8,
                competency: "Integrity (Health, Sanitation & Licensing Compliance)",
                onetMetric: "Impact = 60",
                weightPercentage: 7.60,
                scenario: "During a routine check, you notice a practitioner reusing single-use equipment or skipping mandatory tool sterilization steps between clients to save time during a busy rush. What do you do?",
                options: [
                    AnswerOption(id: "A", text: "Immediately halt the service safely, discard compromised supplies, sanitize the station fully, document the violation, and conduct mandatory sanitation recertification for all staff before their next shift.", level: .level3),
                    AnswerOption(id: "B", text: "Stop the issue instantly, replace equipment, and implement a digital sanitation compliance system with automated station logs, digital time-stamps, and strict audit trails.", level: .level5),
                    AnswerOption(id: "C", text: "Remind the practitioner after the client leaves to always follow health department rules and use fresh tools.", level: .level1),
                    AnswerOption(id: "D", text: "Speak to the team member privately, review health board regulations, and log the warning in company records.", level: .level2)
                ]
            )
    ]

    private static let partThree: [AssessmentQuestion] = [
AssessmentQuestion(
                id: "health_beauty_q9",
                questionNumber: 9,
                competency: "Stress Tolerance (Peak Hour Front-Desk Chaos)",
                onetMetric: "Impact = 53",
                weightPercentage: 6.72,
                scenario: "During a Friday evening peak rush, the booking system freezes, phone lines are ringing off the hook, several clients are waiting to check in, and two practitioners are running 20 minutes late. How do you lead through this?",
                options: [
                    AnswerOption(id: "A", text: "Step into the lobby with a calm demeanor, transition front-desk staff to manual paper check-in sheets, offer waiting guests complimentary beverages, and manage client expectations smoothly.", level: .level3),
                    AnswerOption(id: "B", text: "Keep a steady presence, focus front-desk staff on greeting arriving guests while turning phone calls to voicemail, and inform waiting clients about the short delay.", level: .level2),
                    AnswerOption(id: "C", text: "Maintain total composure and execute an offline operational protocol: switch to mobile tablet backup check-ins, reassign available staff to guest hospitality, re-balance appointment flows, and log IT support tickets.", level: .level5),
                    AnswerOption(id: "D", text: "Try to restart the computer system while asking waiting clients to sit patiently until the software loads.", level: .level1)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q10",
                questionNumber: 10,
                competency: "Stress Tolerance (Public Review / PR Crisis)",
                onetMetric: "Impact = 53",
                weightPercentage: 6.72,
                scenario: "An influencer or prominent client posts a viral negative review online claiming poor service quality and hygiene concerns at your facility, causing a wave of cancellation inquiries. How do you handle this pressure?",
                options: [
                    AnswerOption(id: "A", text: "Ignore the post and focus on providing good service to the clients who still show up for their appointments.", level: .level1),
                    AnswerOption(id: "B", text: "Maintain strategic composure: publish a professional, factual response addressing the concerns, reach out privately to resolve the client's issue, share verified third-party health inspection reports online, and launch a positive feedback campaign.", level: .level3),
                    AnswerOption(id: "C", text: "Post a quick apology on social media and offer discounts to anyone whose booking was affected by the situation.", level: .level2),
                    AnswerOption(id: "D", text: "Execute a proactive crisis management strategy: address public concerns with full transparency, conduct an immediate independent hygiene audit, implement automated real-time guest feedback tools, and turn the incident into a demonstration of high standards.", level: .level5)
                ]
            ),
            AssessmentQuestion(
                id: "health_beauty_q11",
                questionNumber: 11,
                competency: "Attention to Detail (Client Intake & Safety Screening)",
                onetMetric: "Impact = 66",
                weightPercentage: 8.39,
                scenario: "You are establishing client intake protocols for services involving health screening, chemical applications, or physical exertion. How do you ensure complete safety and accuracy?",
                options: [
                    AnswerOption(id: "A", text: "Ask front-desk staff to verbally check if clients have any allergies or medical conditions before starting their appointments.", level: .level1),
                    AnswerOption(id: "B", text: "Use standard printed intake forms, require signature releases, and instruct practitioners to review health notes before starting services.", level: .level2),
                    AnswerOption(id: "C", text: "Implement digital intake forms that automatically flag medical contraindications, require digital client sign-offs, and store medical history securely in compliance with privacy laws.", level: .level3),
                    AnswerOption(id: "D", text: "Build a digital health-screening app that cross-references client medical profiles against treatment formulas, auto-flags safety risks for practitioners, and logs detailed treatment records for maximum safety and customization.", level: .level5)
                ]
            )
    ]
}
