//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//



import UIKit

extension WebServiceManager {
    public func updateCategoryRules(category: String, isBlocked: Bool, childId: String, deviceId: String,success: @escaping (GetWebContentRuleModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "category": category,
            "is_blocked": isBlocked.description
        ]
        
        return resumeDataTask(with: .updateCategoryRules(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}

