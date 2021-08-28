//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/6/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func updateFence(childId: String, deviceId: String, title: String, description: String, coordinates: [Double], allowedToEnter: Bool, allowedToExit: Bool, radius: Int, applications: [String: Any], fenceId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters: [String: Any] = [
            "title": title,
            "description": description,
            "coordinates": coordinates,
            "radius": radius,
            "applications": applications,
            "allowed_to_enter": allowedToEnter,
            "allowed_to_exit": allowedToExit,
            "fence_id": fenceId
        ]
        
        return resumeDataTask(with: .updateFence(childId: childId, deviceId: deviceId, parameters), success: success, failure: failure).task
    }
    
    
}

