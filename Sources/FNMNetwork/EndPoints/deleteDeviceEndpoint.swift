//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func deleteDevice(childId: String, deviceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .deleteDevice(childId: childId, deviceId: deviceId), success: success, failure: failure).task
    }
    
    
}

