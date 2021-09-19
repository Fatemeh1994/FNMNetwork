//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//
import UIKit

extension WebServiceManager {
    public func updateChild(childId: String, name: String, birthday: String, gender: String, avatar: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "name": name,
            "birthday": birthday,
            "gender": gender,
            "avatar": avatar
        ]
        
        return resumeDataTask(with: .updateChild(childId: childId, parameters), success: success, failure: failure).task
    }
    
    
}

