//
//  File.swift
//  
//
//  Created by Fatemeh najafi on 4/28/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func removeAvatar(childId: String, success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        
        return resumeDataTask(with: .removeAvatar(childId: childId), success: success, failure: failure).task
    }
    
    
}
