//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/6/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func getGeofencingRules(childId: String, deviceId: String, page: Int, limit: Int, success: @escaping ([CreateFenceModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .getGeofencingRules(childId: childId, deviceId: deviceId, page: page, limit: limit), success: success, failure: failure).task
    }
    
    
}

