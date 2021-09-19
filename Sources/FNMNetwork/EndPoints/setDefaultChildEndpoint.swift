//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/10/21.
//

import UIKit

extension WebServiceManager {
    public func setDefaultChild(childId: String, deviceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "child_id": childId,
            "device_id": deviceId
        ]

        return resumeDataTask(with: .setDefaultChild(parameters), success: success, failure: failure).task
    }
    
}
