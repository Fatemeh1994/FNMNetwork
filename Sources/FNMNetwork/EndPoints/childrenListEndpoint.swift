//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/18/1400 AP.
//

import Foundation

extension WebServiceManager {
    public func childrenList(page: Int, count: Int, success: @escaping ([CreateChildModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        
        
        return resumeDataTask(with: .childrenList(page: page, count: count), success: success, failure: failure).task
    }
    
}
