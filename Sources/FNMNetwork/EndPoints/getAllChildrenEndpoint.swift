//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/20/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func getAllChilren(page: Int,limit: Int, success: @escaping (GetAllChildrenModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .getAllChildren(page: page, limit: limit), success: success, failure: failure).task
    }
    

}
