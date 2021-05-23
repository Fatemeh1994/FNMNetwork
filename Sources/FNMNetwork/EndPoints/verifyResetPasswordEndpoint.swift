//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/29/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func verifyResetPassword(token: String, password: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
        let parameters = [
            "password": password
        ]
        
        
        return resumeDataTask(with: .verifyResetPassword(token: token, parameters), success: success, failure: failure).task
    }
    
    
}

