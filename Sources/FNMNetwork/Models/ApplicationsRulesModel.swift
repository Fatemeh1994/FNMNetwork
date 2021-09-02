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
    var id: String
    var currentVersion: String
    var name: String
    var pk: String
    var icon: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case currentVersion = "current_version"
        case name, pk , icon
    }
}
