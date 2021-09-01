//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import Foundation

public struct CreateChildModel: Codable {
    
    public init(
        name: String = .init(),
        birthday: String = .init(),
        gender: String = .init(),
        avatar: String = .init(),
        isDefault: Bool = false,
        childId: String = .init(),
        deleted: Bool? = nil,
        parentId: String? = nil,
        createdAt: String? = nil,
        updatedAt: String? = nil,
        devices: [CreateDeviceModel]? = nil) {
        
        self.name = name
        self.birthday = birthday
        self.gender = gender
        self.avatar = avatar
        self.isDefault = isDefault
        self.childId = childId
        self.deleted = deleted
        self.parentId = parentId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.devices = devices
    }
    
    public let name: String
    public let birthday: String
    public let gender: String
    public let avatar: String
    public var isDefault: Bool
    public let childId: String
    public let deleted: Bool?
    public let parentId: String?
    public let createdAt: String?
    public let updatedAt: String?
    public var devices: [CreateDeviceModel]?
   
    enum CodingKeys: String, CodingKey {
        case name, birthday, gender, avatar
        case isDefault = "is_default"
        case childId = "_id"
        case deleted
        case parentId = "parent_id"
        case createdAt
        case updatedAt
        case devices
        
    }
}
