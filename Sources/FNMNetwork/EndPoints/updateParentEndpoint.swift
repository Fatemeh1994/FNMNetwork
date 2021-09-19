//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/3/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func updateParent(pinCode: String, address: String, mobile: String, avatar: String, password: String, fullName: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "pin_code": pinCode,
            "address": address,
            "mobile": mobile,
            "avatar": avatar,
            "password": password,
            "full_name": fullName
        ]
        
        return resumeDataTask(with: .updateParent(parameters), success: success, failure: failure).task
    }
    
    
}

