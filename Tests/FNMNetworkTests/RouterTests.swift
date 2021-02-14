import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    func testListEndpoint() {
        let exp = expectation(description: "---Get List Success---")
        _ = WebServiceManager.shared.List { list in
            print(list)
            exp.fulfill()
        } failure: { error in
            XCTFail()
            print(error)
        }
        waitForExpectations(timeout: 30)
    }

    static var allTests = [
        ("testExample", testListEndpoint),
    ]
}
