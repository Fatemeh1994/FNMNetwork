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
    public let v: Int
    public let hasPinCode: Bool

    enum CodingKeys: String, CodingKey {
        case children, devices, deleted
        case id = "_id"
        case email, role, createdAt, updatedAt
        case v = "__v"
        case hasPinCode = "has_pin_code"
    }
}
