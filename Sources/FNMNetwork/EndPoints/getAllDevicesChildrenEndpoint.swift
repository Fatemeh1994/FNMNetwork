//
//  GetAllDevicesChildrenEndpoint.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//
import UIKit

extension WebServiceManager {
    public func getAllDevicesChildren(childId: String, page: Int, limit: Int, success: @escaping ([DeviceModel]) -> (), failure: @escaping (ErrorModel?, Error?) -> ()) -> URLSessionTask? {
        
        return resumeDataTask(with: .getAllDevicesChildren(childId: childId, page: page, limit: String(limit)), success: success, failure: failure).task
    }
    

}
