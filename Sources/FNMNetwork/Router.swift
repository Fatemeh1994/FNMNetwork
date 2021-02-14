import Foundation
import Alamofire

public enum Router: URLRequestConvertible {
    
    case list
    
    static var baseURL = URL(string: "https://run.mocky.io/v3/")!
    
    var method: HTTPMethod { .get }
    
    var path: String { "de42e6d9-2d03-40e2-a426-8953c7c94fb8" }
    
    public func asURLRequest() throws -> URLRequest {
        let url = Router.baseURL.appendingPathComponent(path)
        var request: URLRequest
        
        if NetworkState.isInternetAvailable {
            request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)
        } else {
            request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
        }
        request.method = method
        request = try URLEncoding.default.encode(request, with: nil)
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
