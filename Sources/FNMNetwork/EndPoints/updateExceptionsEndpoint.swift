//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func updateExceptions(childId: String, deviceId: String, title: String, description: String, isAllowed: Bool, coordinates: [[[Double]]], success: @escaping (GetWebContentRuleModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters: [String : Any] = [
            "child_id": childId,
            "device_id": deviceId,
            "title": title,
            "description": description,
            "is_allowed": isAllowed,
            "coordinates": coordinates
        ]
        
        return resumeDataTask(with: .updateExceptions(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}




