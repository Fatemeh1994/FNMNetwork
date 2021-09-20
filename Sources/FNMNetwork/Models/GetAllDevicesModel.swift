//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//

import Foundation

public struct GetAllDevicesModel: Codable {
    public let isDefault, isActive: Bool
    public let deleted: Bool
    public let id, platform, agentID, owner: String
    public let displayName, role, createdAt, updatedAt: String
    public let v: Int
    public let token: String

    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case isActive = "is_active"
        case deleted
        case id = "_id"
        case platform
        case agentID = "agent_id"
        case owner
        case displayName = "display_name"
        case role, createdAt, updatedAt
        case v = "__v"
        case token
    }
}

