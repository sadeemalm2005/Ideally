


//
//  IdeaBankStore.swift
//  Venture Readiness Assessment
//
//  Shared, app-wide list of saved ideas (one per completed assessment).
//  Inject ONE instance via .environmentObject at the app root so the Ideas
//  Bank, the post-assessment Readiness screen, and the Idea detail screens
//  all see the same growing list — that's what makes "take an assessment
//  -> card appears in the bank" work.
//
//  Persisted to UserDefaults so ideas survive an app restart. Swap
//  `load`/`save` for a SwiftData/CoreData/CloudKit-backed implementation
//  later without touching any view — they only ever read/write `ideas`.
//
 
import Foundation
import Combine
 
final class IdeaBankStore: ObservableObject {
 
    @Published private(set) var ideas: [Idea] = []
 
    private let storageKey = "com.venturereadiness.ideaBank"
 
    init() {
        load()
    }
 
    /// Newest ideas appear first in the Ideas Bank.
    func add(_ idea: Idea) {
        ideas.insert(idea, at: 0)
        save()
    }
 
    func delete(_ idea: Idea) {
        ideas.removeAll { $0.id == idea.id }
        save()
    }
 
    func delete(at offsets: IndexSet) {
        for index in offsets.sorted(by: >) {
            guard ideas.indices.contains(index) else { continue }
            ideas.remove(at: index)
        }
        save()
    }
 
    private func save() {
        guard let data = try? JSONEncoder().encode(ideas) else { return }
        UserDefaults.standard.set(data, forKey: storageKey)
    }
 
    private func load() {
        guard
            let data = UserDefaults.standard.data(forKey: storageKey),
            let decoded = try? JSONDecoder().decode([Idea].self, from: data)
        else { return }
        ideas = decoded
    }
}
 
