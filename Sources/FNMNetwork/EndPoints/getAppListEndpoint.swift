//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/10/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func getAppList(childId: String, deviceId: String, page: Int, limitations: Int, success: @escaping ([ApplicationModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {

        return resumeDataTask(with: .getAppList(childId: childId, deviceId: deviceId, page: page, limitations: limitations), success: success, failure: failure).task
    }
    
    
}

