//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func updateExceptions(childId: String, deviceId: String, domain: String, isBlocked: Bool, success: @escaping (GetWebContentRuleModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "child_id": childId,
            "device_id": deviceId,
            "domain": domain,
            "is_blocked": isBlocked.description
        ]
        
        return resumeDataTask(with: .updateExceptions(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}




