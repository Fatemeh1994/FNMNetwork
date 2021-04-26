//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func getDefaultAvatar(success: @escaping (SignUpModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        guard let deviceId = UIDevice.current.identifierForVendor?.uuidString else { fatalError("This phone is without UUID") }
        let parameters = [
            "device_id": deviceId
        ]
        
        return resumeDataTask(with: .getDefaultAvatar(parameters), success: success, failure: failure).task
    }
    
}
