//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/11/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func updateAppBlockerRules(isBlocked: Bool, pk: String, appId: String, childId: String, deviceId: String, success: @escaping (GetAppBlockerRulesModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters: [String: Any] = [
            "is_blocked": isBlocked,
            "pk": pk,
            "app_id": appId
        ]

        return resumeDataTask(with: .updateAppBlockerRules(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}

