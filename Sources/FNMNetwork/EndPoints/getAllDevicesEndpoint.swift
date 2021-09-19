//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func getAllDevices(page: Int, limit: Int, success: @escaping ([GetAllDevicesModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .getAllDevices(page: page, limit: limit), success: success, failure: failure).task
    }
    
    
}
