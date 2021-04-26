//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func createDevice( success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "platform": "ios"
        ]
        
        return resumeDataTask(with: .createDevice(parameters), success: success, failure: failure).task
    }
    
}
