//
//  File.swift
//  
//
//  Created by fatemeh najafi on 8/25/21.
//

import Foundation

public protocol ApplicationRules: Codable {
    var isBlocked: Bool { get }
    var application: String { get }
}

public struct ApplicationsRulesModel: ApplicationRules {
    public let id: String
    public let isBlocked: Bool
    public let application: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case isBlocked = "is_blocked"
        case application
    }
}
