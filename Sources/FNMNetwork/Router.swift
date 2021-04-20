import Foundation
import Alamofire

public enum Router: URLRequestConvertible {
    
    case signUp(Parameters)
    
    static var baseURL = URL(string: "https://pc.sternx.de")!
    
    var method: HTTPMethod {
        switch self {
        case .signUp: return .post
        }
    }
    
    var path: String {
        switch self {
        case .signUp: return "/api/v1/auth/parent/sign-up"
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
        request.method = method
        switch self {
        case let .signUp(parameters):
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
