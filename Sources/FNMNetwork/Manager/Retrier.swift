
//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation
import Alamofire

class Retrier: RequestRetrier {
    private let lock = NSLock()
    private let limit = 3
    
    func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
        guard request.response == nil else {
            completion(.doNotRetry)
            return
        }
        guard let statusCode = request.response?.statusCode else {
            completion(.doNotRetry)
            return
        }
        switch statusCode {
        case 200...299:
            completion(.doNotRetry)
        default:
            lock.lock() ; defer { lock.unlock() }
            if request.retryCount < limit {
                completion(.retry)
            } else {
                completion(.doNotRetry)
            }
        }

    }
}
