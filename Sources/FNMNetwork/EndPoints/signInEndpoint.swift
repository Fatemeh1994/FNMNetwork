//
//  File.swift
//  
//
//  Created by Rasa on 1/31/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func signIn(email: String, password: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "email": email,
            "password": password,
            "agent_id": UUID().uuidString,
            "platform": "ios"
        ]
        
        return resumeDataTask(with: .signUp(parameters), success: success, failure: failure).task
    }
    
}
