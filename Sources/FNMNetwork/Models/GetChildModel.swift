//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/28/1400 AP.
//


import Foundation


public struct GetChildModel: Codable {
    public let isDefault: Bool
    public let devices: [DeviceModel]
    public let deleted: Bool
    public let id, name, birthday: String
    public let avatar: String
    public let gender, parentID, createdAt, updatedAt: String
    public let v: Int

    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case devices, deleted
        case id = "_id"
        case name, birthday, avatar, gender
        case parentID = "parent_id"
        case createdAt, updatedAt
        case v = "__v"
    }
}

