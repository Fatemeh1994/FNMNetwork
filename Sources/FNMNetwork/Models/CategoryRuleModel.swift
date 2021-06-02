//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation

public struct CategoryRuleModel: Codable {
    public let rule: [RuleIsBlockedModel]
    public let id, name: String

    enum CodingKeys: String, CodingKey {
        case rule
        case id = "_id"
        case name
    }
}
