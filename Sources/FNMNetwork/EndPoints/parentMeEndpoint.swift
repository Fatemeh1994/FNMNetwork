//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/23/21.
//

import Foundation

extension WebServiceManager {
    public func parentMe(success: @escaping (CreateChildModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        return resumeDataTask(with: .parentMe, success: success, failure: failure).task
    }
}
