//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation



extension WebServiceManager {
    public func locationHistory(childId: String, deviceId: String, start: String, end: String, success: @escaping ([LocationHistoryModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        
        
        return resumeDataTask(with: .locationHistory(childId: childId, deviceId: deviceId, start: start, end: end), success: success, failure: failure).task
    }
    
}
