//
//  File.swift
//  
//
//  Created by Rasa on 2/6/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func createDevice(childId: String, platform: String, success: @escaping (CreateDeviceModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {

        let parameters = [
            "platform": platform
        ]

        return resumeDataTask(with: .createDevice(childId: childId, parameters), success: success, failure: failure).task
    }

}
