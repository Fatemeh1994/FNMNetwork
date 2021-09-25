//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import UIKit

extension WebServiceManager {
    public func signUp(email: String, password: String, fcmToken: String?, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
        var parameters: [String: Any] = [
            "email": email,
            "password": password,
            "agent_id": agentId,
            "platform": "ios"
        ]
        if fcmToken != nil && fcmToken?.isEmpty == false {
            parameters["token"] = fcmToken!
        }
        
        return resumeDataTask(with: .signUp(parameters), success: success, failure: failure).task
    }
    
    
}
