//
//  File.swift
//  
//
//  Created by fatemeh najafi on 8/25/21.
//

import Foundation

public struct ApplicationsRulesModel<Application: Codable>: Codable {
    public let id: String
    public let isBlocked: Bool?
    public let application: Application

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case isBlocked = "is_blocked"
        case application
    }
}

public struct RulesApplication: Application {
    public var id: String
    public var currentVersion: String
    public var name: String
    public var pk: String
    public var icon: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case currentVersion = "current_version"
        case name, pk , icon
    }
}
