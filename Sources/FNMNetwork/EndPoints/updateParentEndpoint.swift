//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/3/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func updateParent(pinCode: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "pin_code": pinCode
        ]
        
        return resumeDataTask(with: .updateParent(parameters), success: success, failure: failure).task
    }
    
    
}

