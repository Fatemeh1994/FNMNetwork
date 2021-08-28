//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/6/1400 AP.
//

import Foundation


public struct GetGeofencingRulesModel: Codable {
    public let deleted: Bool
    public let id: String
    public let polygon: PolygonModel
    public let allowedToExit, allowedToEnter: Bool
    public let applications: [ApplicationsRulesModel]
    public let title, deviceID, childID, getGeofencingRulesModelDescription: String
    public let createdAt, updatedAt: String
    public let v: Int

    enum CodingKeys: String, CodingKey {
        case deleted
        case id = "_id"
        case polygon
        case allowedToExit = "allowed_to_exit"
        case allowedToEnter = "allowed_to_enter"
        case applications, title
        case deviceID = "device_id"
        case childID = "child_id"
        case getGeofencingRulesModelDescription = "description"
        case createdAt, updatedAt
        case v = "__v"
    }
}


//typealias GetGeofencingRulesModel = [GetGeofencingRulesModel]
