import Foundation
import Alamofire

public enum Router: URLRequestConvertible {
    
    case signUp(Parameters)
    case signIn(Parameters)
    case uploadAvatar(childId: String, Parameters)
    case removeAvatar(childId: String)
    case getDefaultAvatar
    case createChild(Parameters)
    case createDevice(childId: String, Parameters)
    case generatePairCode(childId: String)
    case authChildSignIn(Parameters)
    case signInAndSignUpWithGoogle(Parameters)
    case childrenList(page: Int,count: Int)
    case setDefaultChild(Parameters)
    case resetPassword(Parameters)
    case resetPinCode(Parameters)
    case verifyResetPassword(Parameters)
    case verifyResetPinCode(Parameters)
    case checkPinCode(Parameters)
    case parentMe
    case updateParent(Parameters)
    case getAppBlockerRules(childId: String, deviceId:String)
    case updateAppBlockerRules(childId: String, deviceId:String, Parameters)
    case updateExceptions(childId: String, deviceId: String, Parameters)
    case getWebContentRule(childId: String, deviceId:String)
    case updateCategoryRules(childId: String, deviceId: String, Parameters)
    case deleteException(childId: String, deviceId: String, Parameters)
    case getLastLocation(childId: String, deviceId: String)
    case locationHistory(childId: String, deviceId: String, start: String, end: String)
    case deleteFence(childId: String, deviceId: String, Parameters)
    case createFence(childId: String, deviceId: String, Parameters)
    case updateFence(childId: String, deviceId: String, Parameters)
    case getGeofencingRules(childId: String, deviceId: String, page: Int, limit: Int)
    case getAppList(childId: String, deviceId: String, page: Int, limitations: Int)
    case changeStatus(childId: String, deviceId: String, Parameters)
    case activateLiveLocation(childId: String, deviceId: String)
    case updateFcm(Parameters)
    case signOutUser
    case FAQList
    case removeAvatarParent
    case uploadAvatarParent
    case checkPassword(Parameters)
    case getAllDevices(page: Int, limit: Int)
    case getOneDevice(deviceId: String)
    case updateChild(childId: String, Parameters)
    case removeChildWithDevices(childId: String)
    case getChild(childId: String)
    case getAllDevicesChildren(childId: String, page: Int, limit: String)
    case deleteDevice(childId: String, deviceId:String)
    
    
        
    static var baseURL: URL = URL(string: "https://pc.pishgamvista.com")!
    
    var method: HTTPMethod {
        switch self {
        case .signUp: return .post
        case .signIn: return .post
        case .getDefaultAvatar: return .get
        case .createChild: return .post
        case .createDevice: return .post
        case .generatePairCode: return .get
        case .authChildSignIn: return .post
        case .signInAndSignUpWithGoogle: return .post
        case .childrenList: return .get
        case .setDefaultChild: return .post
        case .resetPassword: return .post
        case .resetPinCode: return .post
        case .verifyResetPassword: return .post
        case .verifyResetPinCode: return .post
        case .checkPinCode: return .post
        case .parentMe: return .get
        case .updateParent: return .put
        case .getAppBlockerRules: return .get
        case .updateAppBlockerRules: return .post
        case .updateExceptions: return .post
        case .getWebContentRule: return .get
        case .updateCategoryRules: return .post
        case .deleteException: return .delete
        case .getLastLocation: return .get
        case .locationHistory: return .get
        case .deleteFence: return .delete
        case .createFence: return .post
        case .uploadAvatar: return .post
        case .removeAvatar: return .delete
        case .updateFence: return .put
        case .getGeofencingRules: return .get
        case .changeStatus: return .post
        case .getAppList: return .get
        case .activateLiveLocation: return .get
        case .updateFcm: return .post
        case .signOutUser: return .post
        case .FAQList: return .get
        case .removeAvatarParent: return .delete
        case .uploadAvatarParent: return .post
        case .checkPassword: return .post
        case .getAllDevices: return .get
        case .getOneDevice: return .get
        case .updateChild: return .put
        case .removeChildWithDevices: return .delete
        case .getChild: return .get
        case .getAllDevicesChildren: return .get
        case .deleteDevice: return .delete
            
            
            
        }
    }
    
    
    var path: String {
        switch self {
        case .signUp: return "/api/v1/auth/parent/sign-up"
        case .signIn: return "/api/v1/auth/parent/sign-in"
        case .getDefaultAvatar: return "/api/v1/statics/defualt-avatars-list"
        case .createChild: return "/api/v1/parent/children/create"
        case let .createDevice(childId, _): return "/api/v1/parent/children/devices/\(childId)/create"
        case let .generatePairCode(childId): return "/api/v1/parent/children/\(childId)/generate-paircode"
        case .authChildSignIn: return "/api/v1/auth/child/sign-in"
        case .signInAndSignUpWithGoogle: return "/api/v1/auth/parent/google/sign-in"
        case let .childrenList(page,count): return "/api/v1/parent/children/list/\(page)/\(count)"
        case .setDefaultChild: return "/api/v1/parent/children/set-default"
        case .resetPassword: return "/api/v1/auth/parent/reset/password"
        case .resetPinCode: return "/api/v1/parent/reset/pin-code"
        case .verifyResetPassword: return "/api/v1/auth/parent/verify-reset/password"
        case .verifyResetPinCode: return "/api/v1/parent/verify-reset/pin-code"
        case .checkPinCode: return "/api/v1/parent/pin-code"
        case .parentMe: return "/api/v1/parent/me"
        case .updateParent: return "/api/v1/parent/update-me"
        case let .getAppBlockerRules(childId,deviceId): return "/api/v1/parent/children/devices/\(childId)/rules/app-rules/\(deviceId)"
        case let .updateAppBlockerRules(childId,deviceId,_): return "/api/v1/parent/children/devices/\(childId)/rules/app-rules/\(deviceId)"
        case let .updateExceptions(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)/exceptions"
        case let .getWebContentRule(childId, deviceId): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)"
        case let .updateCategoryRules(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)/category_rules"
        case let .deleteException(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)/exceptions"
        case let .getLastLocation(childId, deviceId): return "/api/v1/parent/children/devices/\(childId)/locations/last-one/\(deviceId)"
        case let .locationHistory(childId, deviceId, start, end): return "/api/v1/parent/children/devices/\(childId)/locations/list/\(deviceId)/\(start)/\(end)"
        case let .deleteFence(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/geofencing/\(deviceId)"
        case let .createFence(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/geofencing/\(deviceId)"
        case let .uploadAvatar(childId, _): return "/api/v1/parent/children/upload-avatar/\(childId)"
        case let .removeAvatar(childId): return "/api/v1/parent/children/remove-avatar/\(childId)"
        case let .updateFence(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/geofencing/\(deviceId)"
        case let .getGeofencingRules(childId, deviceId, page, limit): return "/api/v1/parent/children/devices/\(childId)/rules/geofencing/\(deviceId)/\(page)/\(limit)"
        case let .changeStatus(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/app-rules-activation/\(deviceId)"
        case let .getAppList(childId, deviceId, page, limitations): return "/api/v1/parent/children/devices/\(childId)/get-apps/\(deviceId)/\(page)/\(limitations)"
        case let .activateLiveLocation(childId, deviceId): return "/api/v1/parent/children/devices/\(childId)/live-location/\(deviceId)"
        case .updateFcm: return "/api/v1/parent/devices/fcm"
        case .signOutUser: return "/api/v1/auth/parent/sign-out"
        case .FAQList: return "/api/v1/parent/faq/list"
        case .removeAvatarParent: return "/api/v1/parent/children/remove-avatar"
        case .uploadAvatarParent: return "/api/v1/parent/upload-avatar"
        case .checkPassword: return "/api/v1/parent/check-password"
        case let .getAllDevices(page, limit): return "/api/v1/parent/devices/list/\(page)/\(limit)"
        case let .getOneDevice(deviceId): return "/api/v1/parent/devices/get-one/\(deviceId)"
        case let .updateChild(childId, _): return "/api/v1/parent/children/update-one/\(childId)"
        case let .removeChildWithDevices(childId): return "/api/v1/parent/children/delete-one/\(childId)"
        case let .getChild(childId): return "/api/v1/parent/children/get-one/\(childId)"
        case let .getAllDevicesChildren(childId, page, limit): return "/api/v1/parent/children/devices/\(childId)/list/\(page)/\(limit)"
        case let .deleteDevice(childId, deviceId): return "/api/v1/parent/children/devices/\(childId)/delete-one/\(deviceId)"
            
        }
    }
    public func asURLRequest() throws -> URLRequest {
        let url = Self.baseURL.appendingPathComponent(path)
        var request: URLRequest
        
        request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)
        if !NetworkState.isInternetAvailable {
            Messages.shared.show(title: "internet connection is lost", message: .init(), theme: .error)
        }
        /*
         if NetworkState.isInternetAvailable {
         request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)
         } else {
         request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
         }
         */
        
        if let token = NetworkStorage.shared.token {
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        
        request.method = method
        switch self {
        case let .signUp(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .signIn(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .createChild(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .createDevice(_, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .authChildSignIn(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .signInAndSignUpWithGoogle(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case .childrenList, .parentMe, .removeAvatar, .generatePairCode, .signOutUser, .FAQList, .removeAvatarParent:
            request = try URLEncoding.default.encode(request, with: nil)
        case let .setDefaultChild(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .resetPassword(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .resetPinCode(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .verifyResetPassword(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .verifyResetPinCode(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .checkPinCode(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .updateParent(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case .getAppBlockerRules, .getWebContentRule, .getLastLocation, .locationHistory, .getDefaultAvatar, .getGeofencingRules, .getAppList, .activateLiveLocation, .getAllDevices, .getOneDevice, .removeChildWithDevices, .getChild, .getAllDevicesChildren, .deleteDevice:
            request = try URLEncoding.default.encode(request, with: nil)
        case let .updateAppBlockerRules(_,_, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .updateExceptions(_,_, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .updateCategoryRules(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .deleteException(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .deleteFence(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .createFence(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .uploadAvatar(_, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .updateFence(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .changeStatus(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .updateFcm(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case .uploadAvatarParent:
            request = try URLEncoding.default.encode(request, with: nil)
        case let .checkPassword(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .updateChild(_, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
            
        }
        return request
    }
    
    struct NetworkState {
        private init() { }
        static var isInternetAvailable:Bool
        {
            return NetworkReachabilityManager()!.isReachable
        }
    }
}
