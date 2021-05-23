import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    
    func testSignInEndpoint() {
        let exp = expectation(description: "---User sign in---")
        _ = WebServiceManager.shared.signIn(email: "F@g.com", password: "F12345678", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    
    
    func testVerifyResetPasswordEndpoint() {
        let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImYubmFqYWZpbW9naGFkYW1AZ21haWwuY29tIiwiaWF0IjoxNjIxNjk5ODk4LCJleHAiOjE2MjE3MDAxOTh9.dqdZ8WRyfvmSTmHpghIcHEIPMn2uHXQ6fxeffEF4c2s"
        
        let exp = expectation(description: "---Verify Reset Password---")
        _ = WebServiceManager.shared.verifyResetPassword(token: token , password: "A12345678", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 4)
    }
    
    

}
