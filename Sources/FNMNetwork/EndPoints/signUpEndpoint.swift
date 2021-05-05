//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation
import UIKit

extension WebServiceManager {
    public func signUp(email: String, password: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
        let parameters = [
            "email": email,
            "password": password,
            "agent_id": agentId,
            "platform": "ios"
        ]
        
        return resumeDataTask(with: .signUp(parameters), success: success, failure: failure).task
    }
    
    
}
