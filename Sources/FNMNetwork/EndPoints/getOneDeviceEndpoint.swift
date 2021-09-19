//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func getOneDevice(deviceId: String, success: @escaping ([GetAllDevicesModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .getOneDevice(deviceId: deviceId), success: success, failure: failure).task
    }
    

}
