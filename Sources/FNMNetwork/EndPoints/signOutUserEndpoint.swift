//
//  File.swift
//  
//
//  Created by fatemeh najafi on 9/14/21.
//

import Foundation

extension WebServiceManager {
    public func signOutUser(success: @escaping (MessageModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        return resumeDataTask(with: .signOutUser, success: success, failure: failure).task
    }
}

