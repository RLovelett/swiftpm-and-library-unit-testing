import XCTest
@testable import example_1

final class example_1Tests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(example_1().text, "Hello, World!")
        XCTAssertEqual(example_1().two, 2)
    }
}
