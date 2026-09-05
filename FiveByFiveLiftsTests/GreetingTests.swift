import XCTest
@testable import FiveByFiveLifts

final class GreetingTests: XCTestCase {
    func testInitialGreeting() {
        let greeting = Greeting.initial

        XCTAssertEqual(greeting.message, "Hello, World!")
        XCTAssertEqual(greeting.accessibilityLabel, greeting.message)
    }
}
