//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//


import UIKit


extension WebServiceManager {
    public func removeChildWithDevices(childId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .removeChildWithDevices(childId: childId), success: success, failure: failure).task
    }
    
    
}
