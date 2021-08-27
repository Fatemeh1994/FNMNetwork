//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation

public struct CreateFenceModel: Codable {
    public let id: String
    public let deleted: Bool
    public let polygon: PolygonModel
    public let allowedToExit, allowedToEnter: Bool
    public let applications: [ApplicationModel]
    public let title, deviceID, childID, createfenceModelDescription: String
    public let createdAt, updatedAt: String
    public let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case deleted, polygon
        case allowedToExit = "allowed_to_exit"
        case allowedToEnter = "allowed_to_enter"
        case applications, title
        case deviceID = "device_id"
        case childID = "child_id"
        case createfenceModelDescription = "description"
        case createdAt, updatedAt
        case v = "__v"
    }
}


