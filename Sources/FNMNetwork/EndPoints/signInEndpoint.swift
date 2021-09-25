//
//  File.swift
//  
//
//  Created by Rasa on 1/31/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func signIn(email: String, password: String, fcmToken: String?, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
       
        var parameters = [
            "email": email,
            "password": password,
            "agent_id": agentId,
            "platform": "ios"
        ]
        
        if fcmToken != nil && fcmToken?.isEmpty == false {
            parameters["token"] = fcmToken!
        }
        
        return resumeDataTask(with: .signIn(parameters), success: success, failure: failure).task
    }
    
}
