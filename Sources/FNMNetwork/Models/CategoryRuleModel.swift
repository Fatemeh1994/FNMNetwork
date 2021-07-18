//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation

public struct CategoryRuleModel: Codable {
    
    public let rule: RuleIsBlockedModel
    public let id: String
    public let name: String?
    public let domain: String?
    
    public init(rule: RuleIsBlockedModel, id: String, name: String?, domain: String?) {
        self.rule = rule
        self.id = id
        self.name = name
        self.domain = domain
    }

    enum CodingKeys: String, CodingKey {
        case rule
        case id = "_id"
        case name, domain
    }
}
