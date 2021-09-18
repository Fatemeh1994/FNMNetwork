//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/27/1400 AP.
//


import UIKit

extension WebServiceManager {
    public func FAQList(success: @escaping ([FAQListModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .FAQList, success: success, failure: failure).task
    }
    

}
