//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation

public struct ExceptionModel: Codable {
    public let rule: [RuleIsBlockedModel]
    public let id, domain: String

    enum CodingKeys: String, CodingKey {
        case rule
        case id = "_id"
        case domain
    }
}
