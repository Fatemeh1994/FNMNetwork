//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/15/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func activateLiveLocation(childId: String, deviceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .activateLiveLocation(childId: childId, deviceId: deviceId), success: success, failure: failure).task
    }
    

}
