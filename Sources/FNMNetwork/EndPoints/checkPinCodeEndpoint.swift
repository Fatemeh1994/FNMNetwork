//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/2/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func checkPinCode(pinCode: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "pin_code": pinCode
        ]
        
        
        return resumeDataTask(with: .checkPinCode(parameters), success: success, failure: failure).task
    }
    
    
}

