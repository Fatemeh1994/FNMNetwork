//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func generatePaircode( success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "device_id": "{{device_id}}"
        ]
        
        return resumeDataTask(with: .generatePaircode(parameters), success: success, failure: failure).task
    }
    
    
}
