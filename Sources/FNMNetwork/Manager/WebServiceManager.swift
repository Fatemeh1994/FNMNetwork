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
    
    public func resumeDataTask<T: Codable>(with request: Router,
                                      success: @escaping (T) -> (),
                                      failure: @escaping (AppError) -> () ) -> DataRequest {
        
        return SessionManager.shared.session.request(request).responseData { [weak self] response in
            guard let `self` = self else { return }
            switch response.result {
            case let .success(value):
                if let response = response.response,
                    response.statusCode >= 200 && response.statusCode <= 299 {
                    
                    do {
                        let result = try self.jsonDecoder.decode(T.self, from: value)
                        success(result)
                        return
                    } catch {
                        debugPrint("🦋🦋🦋🦋🦋🦋")
                        debugPrint(type(of: T.self))
                        debugPrint(error)
                        debugPrint("🦋🦋🦋🦋🦋🦋")
                        
                    }
                    failure(.dataModelMismatch)
                }
    
            case let .failure(error):
                failure(.networkError(error.failureReason ?? .init()))
   
            }
        }
    }
}

public enum AppError {
    case dataModelMismatch
    case networkError(String)
}
