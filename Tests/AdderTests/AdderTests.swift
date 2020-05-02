import XCTest
@testable import Adder

final class AdderTests: XCTestCase {
    func testAdd() {
        let adder = Adder()
        let result = adder.add(2, 2);
        XCTAssertEqual(result, 4)
    }
    
    func testHandlerAdd() {
        let adder = Adder()
        let capturedData: String? = "Captured data"
        adder.handlerAdd(2, 2) { result in
            XCTAssertNotNil(capturedData)
            XCTAssertEqual(result, 4)
        }
    }
}
