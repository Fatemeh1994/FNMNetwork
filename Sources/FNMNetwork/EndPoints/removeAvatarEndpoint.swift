//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 4/28/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func removeAvatar(childId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        let parameters = [
            "child_id": childId
        ]
        
        return resumeDataTask(with: .removeAvatar(parameters), success: success, failure: failure).task
    }
    
    
}
