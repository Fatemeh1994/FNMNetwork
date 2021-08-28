//
//  File.swift
//  
//
//  Created by fatemeh najafi on 8/25/21.
//

import Foundation


public struct ApplicationsRulesModel: Codable {
    public let id: String
    public let isBlocked: Bool
    public let application: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case isBlocked = "is_blocked"
        case application
    }
}
