import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    func testSignInEndpoint() {
        let exp = expectation(description: "---User sign in---")
        _ = WebServiceManager.shared.signIn(email: "F.ma@gmail.com", password: "F12345678", fcmToken: "bbbb", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testSignUpEndpoint() {
        let exp = expectation(description: "---User sign up---")
        _ = WebServiceManager.shared.signUp(email: "F.ma@gmail.com", password: "F12345678", fcmToken: "BBB", success: { response in
            NetworkStorage.shared.token = response.token
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testCreateChildEndpoint() {
        let exp = expectation(description: "---Create Child---")
        _ = WebServiceManager.shared.createChild(name: "reza2", birthday: "2020", gender: "boy", avatar: URL(string: "https://pc.sternx.de/api/v1/statics/avatars/get/1.svg"), success: { response in
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
        let exp = expectation(description: "---Get List Avatars---")
        _ = WebServiceManager.shared.getDefaultAvatar(success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testGeneratePairCodeEndpoint() {
        let exp = expectation(description: "---Get  Pair Code---")
        _ = WebServiceManager.shared.generatePairCode(childId: "610115a563522115ae5c8171", success: { response in
            exp.fulfill()
                }, failure: { serverError, networkError in
                    XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
                })
        waitForExpectations(timeout: 8)
    }
    
    func testGetLastLocationEndpoint() {
        let exp = expectation(description: "---Get  Last Location---")
        _ = WebServiceManager.shared.getLastLocation(childId: "610115a563522115ae5c8171", deviceId: "6101302c37a27b15a7bc727c", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    
}
    
    func testGetAppBlockerEndpoint() {
        let exp = expectation(description: "---Get App Blocker location---")
        _ = WebServiceManager.shared.getAppBlockerRules(childId: "610e9e3014eb0e5f906356f2", deviceId: "612f6feb23acae751cc8f58c", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testCreateFenceEndpoint() {
        let exp = expectation(description: "---Create fence location---")
        
        let createFenceRequestModel = CreateFenceRequestModel(
            title: "Fatemeh",
            coordinates: [35.713961,51.389978],
            radius: 100,
            applications: [
                CreateFenceApplicationModel(
                    isBlocked: true,
                    application: "612f700ff15e5b9298ed0481"
                )
            ]
        )
        
        _ = WebServiceManager.shared.createFence(childId: "610e9e3014eb0e5f906356f2", deviceId: "612f6feb23acae751cc8f58c", parameter: createFenceRequestModel, success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testDeleteFenceEndpoint() {
        let exp = expectation(description: "---Delete fence location---")
        _ = WebServiceManager.shared.deleteFence(childId: "610e9e3014eb0e5f906356f2", deviceId: "610f894a2236b45f96d62d22", fenceId: "", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testGetFenceEndpoint() {
        let exp = expectation(description: "---get fence location---")
        _ = WebServiceManager.shared.getGeofencingRules(childId: "610e9e3014eb0e5f906356f2", deviceId: "612f6feb23acae751cc8f58c", page: 0, limit: 100, success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testGetAppListEndpoint() {
        let exp = expectation(description: "---get App List---")
        _ = WebServiceManager.shared.getAppList(childId: "610e9e3014eb0e5f906356f2", deviceId: "612f6feb23acae751cc8f58c", page: 0, limitations: 100, success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testUpdateFcmEndpoint(){
        let exp = expectation(description: "---update fcm token---")
        _ = WebServiceManager.shared.updateFcm(token: "", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testSignOutUserEndpoint(){
        let exp = expectation(description: "---sign Out User---")
        _ = WebServiceManager.shared.signOutUser(success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testCheckPasswordEndpoint(){
        let exp = expectation(description: "---check password---")
        _ = WebServiceManager.shared.checkPassword(password: "F12345678", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testGetAllDevicesEndpoint(){
        let exp = expectation(description: "---get all devices---")
        _ = WebServiceManager.shared.getAllDevices(page: 1, limit: 1, success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testGetOneDeviceEndpoint(){
        let exp = expectation(description: "---get one device---")
        _ = WebServiceManager.shared.getOneDevice(deviceId: "6148286227c0a042624aea6e", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testGetAllDevicesChildrenEndpoint(){
        let exp = expectation(description: "---get All devices children ---")
        _ = WebServiceManager.shared.getAllDevicesChildren(childId: "6137431e1198ab3d9d348068", page: 1, limit: 1, success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    
    func testUpdateParentEndpoint(){
        let exp = expectation(description: "---update Parent ---")
        _ = WebServiceManager.shared.updateParent(pinCode: "123456", address: "aa", mobile: "12", avatar: "11", password: "F12345678", fullName: "fatemeh", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testDeleteDeviceEndpoint(){
        let exp = expectation(description: "---delete device ---")
        _ = WebServiceManager.shared.deleteDevice(childId: "6137431e1198ab3d9d348068", deviceId: "6148286227c0a042624aea6e", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
    func testRemoveChildWithDevicesEndpoint(){
        let exp = expectation(description: "---delete device ---")
        _ = WebServiceManager.shared.removeChildWithDevices(childId: "6137431e1198ab3d9d348068", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    }
    
}
