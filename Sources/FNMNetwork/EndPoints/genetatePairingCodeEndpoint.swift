//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func generatePaircode(childId: String, deviceId: String, success: @escaping (PairCodeModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "device_id": deviceId
        ]
        
        return resumeDataTask(with: .generatePaircode(childId: childId, parameters), success: success, failure: failure).task
    }
    
    
}
