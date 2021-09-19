//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//



import UIKit


extension WebServiceManager {
    public func checkPassword(password: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "password": password
        ]
        
        
        return resumeDataTask(with: .checkPassword(parameters), success: success, failure: failure).task
    }
    
    
}

