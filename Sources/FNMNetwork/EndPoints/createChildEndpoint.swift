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
            "name": name,
            "birthday": birthday,
            "gender": gender,
            "avatar": "https://pc.sternx.de/api/v1/statics/avatars/get/1.svg"
        ]
        
        return resumeDataTask(with: .createChild(parameters), success: success, failure: failure).task
    }
    
}
