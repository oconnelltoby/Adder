import XCTest
@testable import Adder

final class AdderTests: XCTestCase {
    func testAdd() {
        let result = Adder.add(2, 2);
        XCTAssertEqual(result, 4)
    }
}
