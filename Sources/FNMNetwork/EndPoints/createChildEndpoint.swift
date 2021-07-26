//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func createChild(name: String, birthday: String, gender: String, avatar: URL?, success: @escaping (CreateChildModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        
        var parameters = [
            "name": name,
            "birthday": birthday,
            "gender": gender
        ]
        if let avatar = avatar {
            parameters["avatar"] = avatar.absoluteString
        }
        
//        "https://pc.sternx.de/api/v1/statics/avatars/get/1.svg"
        return resumeDataTask(with: .createChild(parameters), success: success, failure: failure).task
    }
    
}
