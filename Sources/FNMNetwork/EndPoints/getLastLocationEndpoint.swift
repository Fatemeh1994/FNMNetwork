//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/26/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func getLastLocation(childId: String, deviceId: String, success: @escaping ([GetLastLocationModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {

        return resumeDataTask(with: .getLastLocation(childId: childId, deviceId: deviceId), success: success, failure: failure).task
    }
    
    
}
