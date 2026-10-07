import SwiftUI

struct ContentView: View {
    @State private var output = "Not run yet"
    @State private var isLoading = false

    var body: some View {
        VStack(spacing: 20) {
            Text(output)
                .padding()
                .multilineTextAlignment(.center)

            Button(isLoading ? "Loading..." : "Run MLX Test") {
                Task { await runTest() }
            }
            .disabled(isLoading)
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(width: 500, height: 400)
    }

    func runTest() async {
        isLoading = true
        output = "Loading model... (first run downloads ~290MB)"
        do {
            guard let output = try? MLXTestService.loadBundledRecommendations() else {
                self.output = "Failed to load bundled JSON"
                isLoading = false
                return
            }
            let reply = try await MLXTestService.personalizeRecommendations(from: output)
            self.output = reply
        } catch {
            output = "Failed: \(error)"
        }
        isLoading = false
    }
}

#Preview {
    ContentView()
}
