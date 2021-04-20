//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation

extension WebServiceManager {
    public func signUp(email: String, password: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "email": email,
            "password": password,
            "agent_id": UUID().uuidString,
            "agent_id": "ios"
        ]
        
        return resumeDataTask(with: .signUp(parameters), success: success, failure: failure).task
    }
}
