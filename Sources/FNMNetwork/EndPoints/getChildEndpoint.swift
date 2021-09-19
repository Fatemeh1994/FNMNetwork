//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//

import UIKit


extension WebServiceManager {
    public func getChild(childId: String, success: @escaping (GetChildModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {

        return resumeDataTask(with: .getChild(childId: childId), success: success, failure: failure).task
    }
    
    
}

