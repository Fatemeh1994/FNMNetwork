//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/27/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func resetPassword(email: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
        let parameters = [
            "email": email
        ]
        
        return resumeDataTask(with: .resetPassword(parameters), success: success, failure: failure).task
    }
    
    
}
