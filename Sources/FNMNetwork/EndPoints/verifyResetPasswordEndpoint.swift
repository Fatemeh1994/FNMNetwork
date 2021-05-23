//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/29/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func verifyResetPassword(token: String, password: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "password": password,
            "token": token
        ]
        
        return resumeDataTask(with: .verifyResetPassword(parameters), success: success, failure: failure).task
    }
    
    
}

