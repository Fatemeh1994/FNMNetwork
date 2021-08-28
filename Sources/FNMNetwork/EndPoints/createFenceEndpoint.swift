//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/31/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func createFence(childId: String, deviceId: String, title: String, description: String, coordinates: [Double], radius: Int, applications: [String: Any], success: @escaping (CreateFenceModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters: [String: Any] = [
            "title": title,
            "description": description,
            "coordinates": coordinates,
//            "is_allowed": isAllowed,
            "radius": radius,
            "applications": applications
//            "allowed_to_enter": allowedToEnter,
//            "allowed_to_exit": allowedToExit
        ]
        
        return resumeDataTask(with: .createFence(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}
