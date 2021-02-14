//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation

extension WebServiceManager {
    public func List(success: @escaping ([ListModel])-> (),
                                                         failure: @escaping (AppError) -> ()) -> URLSessionTask? {

        
        return resumeDataTask(with: Router.list, success: success, failure: failure).task
    }
}
