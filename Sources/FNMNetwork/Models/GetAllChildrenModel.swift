//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/20/1400 AP.
//

import Foundation


public struct GetAllChildrenModel: Codable {
    public let isDefault: Bool
    public let devices: [DeviceModel]
    public let deleted: Bool
    public let id, name, birthday, gender: String
    public let avatar, parentID, createdAt, updatedAt: String
    public let v: Int

    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case devices, deleted
        case id = "_id"
        case name, birthday, gender, avatar
        case parentID = "parent_id"
        case createdAt, updatedAt
        case v = "__v"
    }
}

