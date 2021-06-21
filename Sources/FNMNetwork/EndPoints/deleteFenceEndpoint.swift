//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/31/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func deleteFence(childId: String, deviceId: String, fenceId: String, success: @escaping (DeleteFenceModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "fence_id": fenceId
        ]
        
        return resumeDataTask(with: .deleteFence(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}
