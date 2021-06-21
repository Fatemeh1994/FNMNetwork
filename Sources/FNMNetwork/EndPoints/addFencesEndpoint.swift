//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/31/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func addFences(childId: String, deviceId: String, title: String, description: String, coordinates: [[[Double]]], isAllowed: Bool, success: @escaping (DeleteFenceModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters: [String: Any] = [
            "title": title,
            "description": description,
            "coordinates": coordinates,
            "is_allowed": isAllowed
        ]
        
        return resumeDataTask(with: .addFences(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}
