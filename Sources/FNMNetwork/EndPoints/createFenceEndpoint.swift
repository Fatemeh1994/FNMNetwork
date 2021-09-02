//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/31/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func createFence(childId: String, deviceId: String, parameter: CreateFenceRequestModel, success: @escaping (CreateFenceModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        
        let jsonData = try! JSONEncoder().encode(parameter)
        let parameters = try! JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as! [String: Any]
        
        return resumeDataTask(with: .createFence(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}
