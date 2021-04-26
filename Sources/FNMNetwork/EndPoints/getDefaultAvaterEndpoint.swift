//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func getDefaultAvatar(device_id: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "device_id": "600d4ffeea2b566389c7ceb1"
        ]
        
        return resumeDataTask(with: .getDefaultAvatar(parameters), success: success, failure: failure).task
    }
    
}
