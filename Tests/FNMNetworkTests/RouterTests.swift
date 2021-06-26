import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    
    func testSignInEndpoint() {
        let exp = expectation(description: "---User sign in---")
        _ = WebServiceManager.shared.signIn(email: "fnajafimoghadam@gmail.com", password: "F12345678", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    func testSignUpEndpoint() {
        let exp = expectation(description: "---User sign up---")
        _ = WebServiceManager.shared.signUp(email: "fnajafimoghadam@gmail.com", password: "F12345678", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    func testCreateChildEndpoint() {
        let exp = expectation(description: "---Create Child---")
        _ = WebServiceManager.shared.createChild(name: "mamad", birthday: "2020", gender: "boy", avatar: "1.svg", success: { response in
            //
            print(response.childId)
            
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    func testCreateDeviceEndpoint() {
        let exp = expectation(description: "---Create Device---")
        _ = WebServiceManager.shared.createDevice(childId: "60d716731074ec7d914fa90b", platform: "android", success: { response in
            print(response.deviceId)
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    func testCheckPinEndpoint() {
        let exp = expectation(description: "---check pin code---")
        _ = WebServiceManager.shared.checkPinCode(pinCode: "123456", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testGetAppBlockerRules(){
        let exp = expectation(description: "---get app list---")
        _ = WebServiceManager.shared.getAppBlockerRules(childId: "60d716731074ec7d914fa90b", deviceId: "60d716f91074ec7d914fa916", success: { (response) in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknow")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testVerifyResetPasswordEndpoint() {
        
        let exp = expectation(description: "---Verify Reset Password---")
        _ = WebServiceManager.shared.verifyResetPassword(token: NetworkStorage.shared.token!  , password: "F12345678", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 4)
    }
    
    func testLocationHistoryEndpoint() {
        let exp = expectation(description: "---Location History---")
        _ = WebServiceManager.shared.locationHistory(chilId: "60d716731074ec7d914fa90b", deviceId: "60d716f91074ec7d914fa916", start: "1624000371000", end: "1624705559000", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 4)
    }

}
