//
//  CreateFenceModel.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation

public struct CreateFenceModel<Application: Codable>: Codable {
    
    public let id: String
    public let deleted: Bool
    public let polygon: PolygonModel
    public let applications: Application
    public let title, deviceID, childID, getAppListModelDescription: String
    public let createdAt, updatedAt: String
    public let v: Int
    public let allowedToExit, allowedToEnter: Bool
    

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case deleted, polygon
        case applications, title
        case deviceID = "device_id"
        case childID = "child_id"
        case createdAt, updatedAt
        case v = "__v"
        case getAppListModelDescription = "description"
        case allowedToExit = "allowed_to_exit"
        case allowedToEnter = "allowed_to_enter"
    }
}
