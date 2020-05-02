import XCTest
@testable import Adder

final class AdderTests: XCTestCase {
    func testAdd() {
        let adder = Adder()
        let result = adder.add(2, 2);
        XCTAssertEqual(result, 4)
    }
}
