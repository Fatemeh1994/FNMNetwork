//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/11/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func updateAppBlockerRules(applications: [String: String], days: [String: String], appId: String, childId: String, deviceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters: [String: String] = [
            "applications": applications,
            "days": days
            
        ]

        
        return resumeDataTask(with: .updateAppBlockerRules(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}

