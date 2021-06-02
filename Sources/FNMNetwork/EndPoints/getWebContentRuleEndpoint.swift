//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func getWebContentRule(childId: String, deviceId: String, success: @escaping (GetWebContentRuleModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        return resumeDataTask(with: .getWebContentRule(childId: childId, deviceId: deviceId), success: success, failure: failure).task
    }
    
}
