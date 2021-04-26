//
//  File.swift
//  
//
//  Created by Rasa on 2/5/1400 AP.
//

import Foundation
import UIKit

extension WebServiceManager {
    public func deviceLogin(otp: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask?{
        
        let parameters = [
            "pair_code": otp,
            "platform": "ios",
            "agent_id": UUID().uuidString,
            "device_name": UIDevice.current.name
        ]
        
        return resumeDataTask(with: .deviceLogin(parameters), success: success, failure: failure).task
    }
    
    
}


