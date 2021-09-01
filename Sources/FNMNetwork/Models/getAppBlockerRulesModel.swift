//
//  GetAppBlockerRulesModel.swift
//
//
//  Created by Fatemeh Najafi on 3/11/1400 AP.
//

import Foundation

public struct GetAppBlockerRulesModel: Codable {
    public let blackList: [AppList]
    public let whiteList: [AppList]
    
    enum CodingKeys: String, CodingKey {
        case blackList = "black_list"
        case whiteList = "white_list"
    }
}

// MARK: - BlackList
public struct AppList: Codable {
    public let deleted: Bool
    public let id: String
    public let ruleType: RuleType
    public let days: [Day]
    public let deviceID: String
    public let childID: String
    public let parentID: String
    public let application: ApplicationModel
    public let createdAt, updatedAt: String
    public let v: Int
//    let zones: [JSONAny]

    enum CodingKeys: String, CodingKey {
        case deleted
        case id = "_id"
        case ruleType = "rule_type"
        case days
        case deviceID = "device_id"
        case childID = "child_id"
        case parentID = "parent_id"
        case application, createdAt, updatedAt
        case v = "__v"
//        case zones
    }
}

enum Status: String, Codable {
    case installed = "INSTALLED"
    case uninstalled = "UNINSTALLED"
}

public enum RuleType: String, Codable {
    case blackList = "BLACK_LIST"
    case whiteList = "WHITE_LIST"
}
