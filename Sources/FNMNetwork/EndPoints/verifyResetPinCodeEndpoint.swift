//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/29/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func verifyResetPinCode(code: String, pinCode: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "pin_code": pinCode,
            "code": code
        ]
        
        return resumeDataTask(with: .verifyResetPinCode(parameters), success: success, failure: failure).task
    }
    
    
}
