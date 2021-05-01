import Foundation
import Alamofire

public enum Router: URLRequestConvertible {
    
    case signUp(Parameters)
    case signIn(Parameters)
    case deviceLogin(Parameters)
    case getDefaultAvatar(Parameters)
    case createChild(Parameters)
    case createDevice(childId: String, Parameters)
    case generatePaircode(childId: String, Parameters)
    
    
    static var baseURL = URL(string: "https://pc.sternx.de")!
    
    var method: HTTPMethod {
        switch self {
        case .signUp: return .post
        case .signIn: return .post
        case .deviceLogin: return .post
        case .getDefaultAvatar: return .get
        case .createChild: return .post
        case .createDevice: return .post
        case .generatePaircode: return .post
            
        }
    }
    
    var path: String {
        switch self {
        case .signUp: return "/api/v1/auth/parent/sign-up"
        case .signIn: return "/api/v1/auth/parent/sign-in"
        case .deviceLogin: return "/api/v1/auth/child/sign-in"
        case .getDefaultAvatar: return "/api/v1/statics/avatars/list"
        case .createChild: return "/api/v1/parent/children/create"
        case let .createDevice(childId, _): return "/api/v1/parent/children/devices/\(childId)/create"
        case let .generatePaircode(childId, _): return "/api/v1/parent/children/devices/\(childId)/generate-paircode"
            
        }
    }
    
    public func asURLRequest() throws -> URLRequest {
        let url = Router.baseURL.appendingPathComponent(path)
        var request: URLRequest
        
        
        if NetworkState.isInternetAvailable {
            request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)
        } else {
            request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
        }
        
        if let token = NetworkStorage.shared.token {
            request.addValue("bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        
        request.method = method
        switch self {
        case let .signUp(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .signIn(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .deviceLogin(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .getDefaultAvatar(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .createChild(parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .createDevice(_, parameters):
            request = try JSONEncoding.default.encode(request, with: parameters)
        case let .generatePaircode(_, parameters):
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
