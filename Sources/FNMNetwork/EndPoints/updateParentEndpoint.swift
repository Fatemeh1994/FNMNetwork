//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/3/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func updateParent(pinCode: String, address: String, mobile: String, avatar: String, password: String, fullName: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        var parameters: [String: String] = [:]
    
        if !pinCode.isEmpty {
            parameters["pin_code"] = pinCode
        }
        
        if !address.isEmpty {
            parameters["address"] = address
        }
        
        if !mobile.isEmpty {
            parameters["mobile"] = mobile
        }
        
        if !avatar.isEmpty {
            parameters["avatar"] = avatar
        }
        
        if !password.isEmpty {
            parameters["password"] = password
        }
        
        if !fullName.isEmpty {
            parameters["full_name"] = fullName
        }
        
        return resumeDataTask(with: .updateParent(parameters), success: success, failure: failure).task
    }
    
    
}

