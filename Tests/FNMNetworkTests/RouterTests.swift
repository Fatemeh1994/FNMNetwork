import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    
    func testSignInEndpoint() {
        let exp = expectation(description: "---User sign in---")
        _ = WebServiceManager.shared.signIn(email: "f.najafimoghadam@gmail.com", password: "F12345678", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    func testSignUpEndpoint() {
        let exp = expectation(description: "---User sign up---")
        _ = WebServiceManager.shared.signUp(email: "f.najafimoghadam@gmail.com", password: "F12345678", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    func testCreateChildEndpoint() {
        let exp = expectation(description: "---Create Child---")
        _ = WebServiceManager.shared.createChild(name: "reza", birthday: "2020", gender: "boy", avatar: "1.svg", success: { response in
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
        _ = WebServiceManager.shared.locationHistory(childId: "60d81cc463140701611b106d", deviceId: "60d81cc663140701611b106e", start: "1624760208000", end: "1624782508000", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 4)
    }

    
    func testGetDefaultAvatarEndpoint() {
        let exp = expectation(description: "---Get List Avaters---")
        _ = WebServiceManager.shared.getDefaultAvatar(success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testGeneratePairCodeEndpoint() {
        let exp = expectation(description: "---Get  Pair Code---")
        _ = WebServiceManager.shared.generatePairCode(childId: "60f6d4e8d46d3347cf68ba4d", success: { response in
            exp.fulfill()
                }, failure: { serverError, networkError in
                    XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
                })
        waitForExpectations(timeout: 4)
    }
    
    
}
