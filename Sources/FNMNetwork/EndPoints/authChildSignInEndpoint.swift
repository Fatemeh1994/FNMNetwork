//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import UIKit

extension WebServiceManager {
    public func authChildSignIn(pairCode: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let agentId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        
        
        let parameters = [
            "pair_code": pairCode,
            "platform": UIDevice.current.systemName.lowercased(),
            "agent_id": agentId,
            "device_name": UIDevice.current.name
        ]
        print(parameters)
        return resumeDataTask(with: .authChildSignIn(parameters), success: success, failure: failure).task
    }
    
}
