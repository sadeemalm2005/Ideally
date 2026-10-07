import FoundationModels

@available(iOS 26.0, *)
@Generable
struct IdeaBankInsight {
    @Guide(description: "A short, warm, and encouraging observation written directly to the person, using 'you' and 'your' — never 'the user'. Sound like a supportive friend noticing a pattern in their saved ideas, not a report. Keep it positive and upbeat, one to two sentences max.")
    var insight: String
}

@available(iOS 26.0, *)
func generateBankInsight(ideaTitles: [String], ideaDescriptions: [String]) async throws -> String {
    let session = LanguageModelSession()
    let combined = zip(ideaTitles, ideaDescriptions)
        .map { "- \($0): \($1)" }
        .joined(separator: "\n")

    let prompt = """
    Here are your saved ideas:
    \(combined)

    Talk directly to me. Notice a pattern, theme, or recurring interest across these ideas, and tell me about it in a warm, friendly, and encouraging way — like you're excited for me. Use "you" and "your", never "the user" or third person. Keep it short, positive, and conversational.
    """

    let response = try await session.respond(
        to: prompt,
        generating: IdeaBankInsight.self
    )
    return response.content.insight
}
