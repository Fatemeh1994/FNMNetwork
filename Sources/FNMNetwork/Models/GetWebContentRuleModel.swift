//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//



import Foundation

public struct GetWebContentRuleModel: Codable {
    public let deleted: Bool
    public let id, deviceID, childID: String
    public let exceptions: [ExceptionModel]
    public let categoryRules: [CategoryRuleModel]
    public let Rule: [RuleIsBlockedModel]
    public let createdAt, updatedAt: String
    public let v: Int
    

    enum CodingKeys: String, CodingKey {
        case deleted
        case id = "_id"
        case deviceID = "device_id"
        case childID = "child_id"
        case exceptions
        case categoryRules = "category_rules"
        case createdAt, updatedAt
        case v = "__v"
        case Rule
    }
}



