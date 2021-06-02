//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/11/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func getAppBlockerRules(childId: String, deviceId: String, success: @escaping (getAppBlockerRulesModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {

        return resumeDataTask(with: .getAppBlockerRules(childId: childId, deviceId: deviceId), success: success, failure: failure).task
    }
    
    
}

