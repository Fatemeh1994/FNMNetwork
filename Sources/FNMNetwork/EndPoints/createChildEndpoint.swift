//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func createChild(name: String, birthday: String, gender: String, avatar: String, success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "name": "maasd",
            "birthday": "1960",
            "gender": "boy",
            "avatar": "1.svg"
        ]
        
        return resumeDataTask(with: .createChild(parameters), success: success, failure: failure).task
    }
    
}
