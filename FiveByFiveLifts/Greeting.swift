struct Greeting: Equatable, Sendable {
    let message: String
    let accessibilityLabel: String

    static let initial = Greeting(
        message: "Hello, World!",
        accessibilityLabel: "Hello, World!"
    )
}
