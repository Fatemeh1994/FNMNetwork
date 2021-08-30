//
//  File.swift
//  
//
//  Created by fatemeh najafi on 8/30/21.
//

import UIKit

extension WebServiceManager {
    public func changeStatus(childId: String, deviceId: String, ruleId: String, status: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "rule_id": ruleId,
            "status": status
        ]
        return resumeDataTask(with: .changeStatus(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
}
