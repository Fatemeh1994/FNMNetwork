//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/27/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func updateUser( pinCode: String, address: String, mobile: String, avatar: String, password: String, firstName: String, lastName: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "pin_code": pinCode,
            "address": address,
            "mobile": mobile,
            "avatar": avatar,
            "password": password,
            "first_name": firstName,
            "last_name": lastName
        ]
        return resumeDataTask(with: .updateUser(parameters), success: success, failure: failure).task
    }
    
    
}

