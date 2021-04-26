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
            "avatar": avatar
        ]
        
        return resumeDataTask(with: .createChild(parameters), success: success, failure: failure).task
    }
    
}
