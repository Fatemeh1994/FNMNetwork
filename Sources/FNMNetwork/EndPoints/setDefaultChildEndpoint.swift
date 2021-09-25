//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/10/21.
//

import UIKit

extension WebServiceManager {
    public func setDefaultChild(childId: String, deviceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        var parameters: [String: String] = [:]
        
        if !childId.isEmpty {
            parameters["child_id"] = childId
        }
        
        if !deviceId.isEmpty {
            parameters["device_id"] = childId
        }

        return resumeDataTask(with: .setDefaultChild(parameters), success: success, failure: failure).task
    }
    
}
