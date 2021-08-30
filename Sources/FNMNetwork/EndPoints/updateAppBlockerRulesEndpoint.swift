//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/11/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func updateAppBlockerRules(parameters: UpdateAppBlockerRulesRequestModel, childId: String, deviceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
//        let parameters: [String: String] = [
//            "applications": applications,
//            "days": days
//        ]
        
        do {
            let data = try JSONEncoder().encode(parameters)
            let parameters = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
            return resumeDataTask(with: .updateAppBlockerRules(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
        } catch {
            return nil
        }
    }
    
    
}

