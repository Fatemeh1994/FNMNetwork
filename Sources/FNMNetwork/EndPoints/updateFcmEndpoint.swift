//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/21/1400 AP.
//


import Foundation

extension WebServiceManager {
    public func updateFcm(token: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "token": token
        ]

        return resumeDataTask(with: .updateFcm(parameters), success: success, failure: failure).task
    }
    
}
