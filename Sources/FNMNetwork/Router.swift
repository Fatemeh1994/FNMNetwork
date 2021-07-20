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
    case addFences(childId: String, deviceId: String, Parameters)
    
    
        
    static var baseURL = URL(string: "https://pc.pishgamvista.com")!
    
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
        case .addFences: return .post
        case .uploadAvatar: return .post
        case .removeAvatar: return .delete

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
        case .updateParent: return "/api/v1/parent/me"
        case let .getAppBlockerRules(childId,deviceId): return "/api/v1/parent/children/devices/\(childId)/rules/app-rules/\(deviceId)"
        case let .updateAppBlockerRules(childId,deviceId,_): return "/api/v1/parent/children/devices/\(childId)/rules/app-rules/\(deviceId)"
        case let .updateExceptions(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)/exceptions"
        case let .getWebContentRule(childId, deviceId): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)"
        case let .updateCategoryRules(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)/category_rules"
        case let .deleteException(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/web-content/\(deviceId)/exceptions"
        case let .getLastLocation(childId, deviceId): return "/api/v1/parent/children/devices/\(childId)/locations/last-one/\(deviceId)"
        case let .locationHistory(childId, deviceId, start, end): return "/api/v1/parent/children/devices/\(childId)/locations/list/\(deviceId)/\(start)/\(end)"
        case let .deleteFence(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/geofencing/\(deviceId)"
        case let .addFences(childId, deviceId, _): return "/api/v1/parent/children/devices/\(childId)/rules/geofencing/\(deviceId)"
        case let .uploadAvatar(childId, _): return "/api/v1/parent/children/upload-avatar/\(childId)"
        case let .removeAvatar(childId): return "/api/v1/parent/children/remove-avatar/\(childId)"
            
        }
    }
    
    public func asURLRequest() throws -> URLRequest {
        let url = Router.baseURL.appendingPathComponent(path)
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
        case .childrenList, .parentMe, .removeAvatar, .generatePairCode:
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
        case .getAppBlockerRules, .getWebContentRule, .getLastLocation, .locationHistory, .getDefaultAvatar :
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
        case let .addFences(_, _, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .uploadAvatar(_, parameters):
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
