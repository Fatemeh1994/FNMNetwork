//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation
import Alamofire

public class WebServiceManager {
    
    private var jsonDecoder = JSONDecoder()
    
    public static var shared = WebServiceManager()
    
    public func resumeDataTask<T: Codable, U: Codable>(with request: Router,
                                      success: @escaping (T) -> (),
                                      failure: @escaping (U?, Error?) -> () ) -> DataRequest {
    
        return SessionManager.shared.session.request(request).responseData { [weak self] response in
            guard let `self` = self else { return }
            
            switch response.result {
            case let .success(value):
                if let response  = response.response,
                   response.statusCode >= 200 && response.statusCode <= 299 {
                    do {
                        let result = try self.jsonDecoder.decode(T.self, from: value)
                        success(result)
                    } catch {
                        debugPrint(error)
                    }
                    
                } else {
                    do {
                        let result = try self.jsonDecoder.decode(U.self, from: value)
                        let networkError = NSError(domain: response.response!.description, code: response.response!.statusCode, userInfo: nil)
                        failure(result,networkError)
                    } catch {
                        debugPrint(error)
                    }
                }
            case let .failure(error):
                let error = NSError(domain: error.localizedDescription, code: error.responseCode ?? .zero, userInfo: nil)
                failure(nil,error)

            }
        }
    }
}

public enum AppError {
    case networkError(Error)
    case serverError(ErrorModel)
}
