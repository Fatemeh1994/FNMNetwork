//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/20/1400 AP.
//

import Foundation

public struct DeviceModel: Codable {
    public let isDefault: Bool
    public let topics: [String]
    public let deleted: Bool
    public let id, platform, owner, parentID: String
    public let role, createdAt, updatedAt: String
    public let v: Int
    public let status: String

    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case topics, deleted
        case id = "_id"
        case platform, owner
        case parentID = "parent_id"
        case role, createdAt, updatedAt
        case v = "__v"
        case status
    }
}
