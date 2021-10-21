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
        adder.handlerAdd(2, 2) { result in
            XCTAssertEqual(result, 4)
        }
    }

    func testRetainRelease() {
        class TestClass {}
        
        weak var object: TestClass?
        
        do {
            let strongObject = TestClass()
            let adder = Adder()
            
            adder.handlerAdd(2, 2) { result in
                object = strongObject
                XCTAssertNotNil(object)
            }
        }
        
        XCTAssertNil(object)
    }
}
