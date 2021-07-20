//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/6/1400 AP.
//

import UIKit

extension WebServiceManager {
    public func generatePairCode(childId: String, success: @escaping (PairCodeModel) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .generatePairCode(childId: childId), success: success, failure: failure).task
    }
    

}
