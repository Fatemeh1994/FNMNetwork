//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/15/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func signInAndSignUpWithGoogle(token: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
        let parameters = [
            "agent_id": agentId,
            "access_token": token,
            "platform": "ios"
        ]
        
        return resumeDataTask(with: .signInAndSignUpWithGoogle(parameters), success: success, failure: failure).task
    }
    
}


