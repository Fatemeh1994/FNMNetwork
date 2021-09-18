//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/27/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func removeAvatarParent(success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .removeAvatarParent, success: success, failure: failure).task
    }
    

}
