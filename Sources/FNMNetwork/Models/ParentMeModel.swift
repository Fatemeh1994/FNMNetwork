//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/24/21.
//

import Foundation

public struct ParentMeModel: Codable {
    
    public let children, devices: [String]
    public let deleted: Bool
    public let id, email, role: String
    public let createdAt, updatedAt: String
    public let address: String?
    public let avatar: String?
    public let fullName: String?
    public let mobile: String?
    public let v: Int
    public let hasPinCode: Bool
    
    /// NOTE:  Create empty state
    public init(children: [String] = [], devices: [String] = [], deleted: Bool = false, id: String = "", email: String = "", role: String = "", createdAt: String = "", updatedAt: String = "", v: Int = .zero, hasPinCode: Bool = false, address: String = "", avatar: String = "", fullName: String = "", mobile: String = "") {
        self.children = children
        self.devices = devices
        self.deleted = deleted
        self.id = id
        self.email = email
        self.role = role
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.v = v
        self.hasPinCode = hasPinCode
        self.address = address
        self.avatar = avatar
        self.fullName = fullName
        self.mobile = mobile
    }

    enum CodingKeys: String, CodingKey {
        case children, devices, deleted, address, avatar, mobile
        case id = "_id"
        case email, role, createdAt, updatedAt
        case v = "__v"
        case hasPinCode = "has_pin_code"
        case fullName = "full_name"
    }
}
