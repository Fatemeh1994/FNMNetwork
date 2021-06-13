//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func deleteExeption(childId: String, deviceId: String, domain: String, success: @escaping (GetWebContentRuleModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "domain": domain
        ]
        
        return resumeDataTask(with: .deleteException(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}

