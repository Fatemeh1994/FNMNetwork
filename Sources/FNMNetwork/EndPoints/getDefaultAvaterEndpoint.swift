//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func getDefaultAvatar(success: @escaping (GetDefaultAvatarModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .getDefaultAvatar, success: success, failure: failure).task
    }
    
}
