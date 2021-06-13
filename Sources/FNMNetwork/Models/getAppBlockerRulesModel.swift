//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 3/11/1400 AP.
//

import Foundation

public struct GetAppBlockerRulesModel: Codable {
    public let rules: [RulesModel]
    public let apps: [AppsModel]
    public let deleted: Bool
    public let id, childID, deviceID: String
    public let v: Int
    public let createdAt, parentID, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case rules, apps, deleted
        case id = "_id"
        case childID = "child_id"
        case deviceID = "device_id"
        case v = "__v"
        case createdAt
        case parentID = "parent_id"
        case updatedAt
    }
}






