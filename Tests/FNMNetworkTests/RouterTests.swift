import XCTest
@testable import FNMNetwork

final class RouterTests: XCTestCase {
    
    
    func testSignInEndpoint() {
        let exp = expectation(description: "---User sign in---")
        _ = WebServiceManager.shared.signIn(email: "Mmad@gmail.com", password: "F12345678", success: { response in
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
    
    
//    func testCreateFenceEndpoint() {
//        let exp = expectation(description: "---Create fence location---")
//        _ = WebServiceManager.shared.createFence(childId: "610e9e3014eb0e5f906356f2", deviceId: "610f894a2236b45f96d62d22", title: "title", coordinates: [51.392052999999997, 35.711292999999998], radius: 300, applications: JSONEncoder.encode(from: applications), success: { response in
//            exp.fulfill()
//        }, failure: { serverError, networkError in
//            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
//        })
//        waitForExpectations(timeout: 8)
//
//}
    
    
//    func json(from object:Any) -> String? {
//        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
//            return nil
//        }
//        return String(data: data, encoding: String.Encoding.utf8)
//    }

    
    
    
    func testDeleteFenceEndpoint() {
        let exp = expectation(description: "---Delete fence location---")
        _ = WebServiceManager.shared.deleteFence(childId: "610e9e3014eb0e5f906356f2", deviceId: "610f894a2236b45f96d62d22", fenceId: "", success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
        waitForExpectations(timeout: 8)
    
}
//    func testDeleteFenceEndpoint() {
//        let exp = expectation(description: "---Update fence location---")
//        _ = WebServiceManager.shared.updateFence(childId: "610e9e3014eb0e5f906356f2", deviceId: "610f894a2236b45f96d62d22", title: "title", coordinates: [51.392052999999997, 35.711292999999998], radius: 300, applications: [String : Any], fenceId: "", success: { response in
//            exp.fulfill()
//        }, failure: { serverError, networkError in
//            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
//        })
//        waitForExpectations(timeout: 8)
//
//}
    
    func testGetFenceEndpoint() {
        let exp = expectation(description: "---get fence location---")
        _ = WebServiceManager.shared.getGeofencingRules(childId: "610e9e3014eb0e5f906356f2", deviceId: "610f894a2236b45f96d62d22", page: 1, limit: 1, success: { response in
            exp.fulfill()
        }, failure: { serverError, networkError in
            XCTFail(serverError?.message ?? networkError?.localizedDescription ?? "Unknown")
        })
    }
    
}


//extension CollectionType where Generator.Element == [String:AnyObject] {
//    func toJSONString(options: NSJSONWritingOptions = .PrettyPrinted) -> String {
//        if let arr = self as? [String:AnyObject],
//            let dat = try? NSJSONSerialization.dataWithJSONObject(arr, options: options),
//            let str = String(data: dat, encoding: NSUTF8StringEncoding) {
//            return str
//        }
//        return "[]"
//    }
//}



extension JSONEncoder {
    static func encode<T: Encodable>(from data: T) {
        do {
            let jsonEncoder = JSONEncoder()
            jsonEncoder.outputFormatting = .prettyPrinted
            let json = try jsonEncoder.encode(data)
            let jsonString = String(data: json, encoding: .utf8)
            
            // iOS/Mac: Save to the App's documents directory
            saveToDocumentDirectory(jsonString)
            
            // Mac: Output to file on the user's Desktop
//            saveToDesktop(jsonString)
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    static private func saveToDocumentDirectory(_ jsonString: String?) {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let fileURL = path.appendingPathComponent("Output.json")
        
        do {
            try jsonString?.write(to: fileURL, atomically: true, encoding: .utf8)
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
//    static private func saveToDesktop(_ jsonString: String?) {
//        let homeURL = FileManager.default.homeDirectoryForCurrentUser
//        let desktopURL = homeURL.appendingPathComponent("Desktop")
//        let fileURL = desktopURL.appendingPathComponent("Output.json")
//
//        do {
//            try jsonString?.write(to: fileURL, atomically: true, encoding: .utf8)
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
}
