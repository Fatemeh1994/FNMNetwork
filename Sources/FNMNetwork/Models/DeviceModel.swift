//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//

import Foundation



public struct DeviceModel: Codable {
    public let isDefault, isActive: Bool
    public let deleted: Bool
    public let id, platform, agentID, parentID: String
    public let owner, deviceName, initializationStatus, displayName: String
    public let role, token, createdAt, updatedAt: String
    public let v: Int
    public let connectionStatus: String

    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case isActive = "is_active"
        case deleted
        case id = "_id"
        case platform
        case agentID = "agent_id"
        case parentID = "parent_id"
        case owner
        case deviceName = "device_name"
        case initializationStatus = "initialization_status"
        case displayName = "display_name"
        case role, token, createdAt, updatedAt
        case v = "__v"
        case connectionStatus = "connection_status"
    }
}
