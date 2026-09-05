import SwiftUI

struct ContentView: View {
    let greeting = Greeting.initial

    var body: some View {
        Text(greeting.message)
            .accessibilityLabel(greeting.accessibilityLabel)
            .accessibilityAddTraits(.isHeader)
            .padding()
    }
}

#Preview {
    ContentView()
}
