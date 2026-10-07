import SwiftUI

@main
struct IdeallyAssesmentApp: App {
    @StateObject private var ideaStore = IdeaBankStore()
    @StateObject private var router = Router()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                WelcomeView()
                    .navigationDestination(for: Route.self) { route in
                                            switch route {
                                            case .ideaBank:
                                                IdeasListView()
                                            case .ideaSummary(let ideaID):
                                                if let idea = ideaStore.ideas.first(where: { $0.id == ideaID }) {
                                                    IdeaSummaryDetailView(idea: idea)
                                                } else {
                                                    Text("Idea not found")
                                                }
                                            }
                                        }
            }
            .environmentObject(ideaStore)
            .environmentObject(router)
        }
    }
}
