//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import Foundation

public struct CreateDeviceModel: Codable {
    public let isDefault: Bool
//    public let topics: []
    public let deviceId: String
    public let deleted: Bool
    public let platform: String
    public let owner: String
    public let parentId: String
    public let role: String
    public let createdAt: String
    public let updatedAt: String
    public let version: Int
    
    enum CodingKeys: String, CodingKey {
        case deleted, platform, owner, role, createdAt, updatedAt
        case isDefault = "is_default"
        case deviceId = "_id"
        case version = "__v"
        case parentId = "parent_id"
    }
}
