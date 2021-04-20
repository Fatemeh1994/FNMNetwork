import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    func testListEndpoint() {
        let exp = expectation(description: "---Get List---")
//        let listManager = ListManager()
//        listManager.getList {
//            exp.fulfill()
//        } onFailure: {
//            XCTFail()
//        }
        waitForExpectations(timeout: 30)
    }

    static var allTests = [
        ("testExample", testListEndpoint),
    ]
}
