//
//  UpdateFenceEndpoint.swift
//  
//
//  Created by Fatemeh Najafi on 6/6/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func updateFence(childId: String, deviceId: String, parameter: UpdateFenceRequestModel, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let jsonData = try! JSONEncoder().encode(parameter)
        let parameters = try! JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as! [String: Any]
        
        return resumeDataTask(with: .updateFence(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}

