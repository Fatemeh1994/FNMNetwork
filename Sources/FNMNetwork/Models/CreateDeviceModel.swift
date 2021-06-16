//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import Foundation

public struct CreateDeviceModel: Codable {
    public var isDefault: Bool
    public let topics: [String]
    public let deviceId: String
    public let deleted: Bool
    public let platform: String
    public let owner: String
    public let parentId: String
    public let role: String
    public let createdAt: String
    public let updatedAt: String
    public let version: Int
    public let status: String?
    public let isActive: Bool
    public let agentID: String?
    public let deviceName: String?
    public let displayName: String?
    
    public var isOnline: Bool { status != "offline" }
        
    enum CodingKeys: String, CodingKey {
        case deleted, platform, owner, role, createdAt, updatedAt
        case isDefault = "is_default"
        case deviceId = "_id"
        case version = "__v"
        case parentId = "parent_id"
        case status
        case isActive = "is_active"
        case agentID = "agent_id"
        case deviceName = "device_name"
        case displayName = "display_name"
        case topics
    }
}




