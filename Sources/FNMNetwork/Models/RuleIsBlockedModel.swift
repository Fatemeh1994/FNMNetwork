//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation

public struct RuleIsBlockedModel: Codable {
    public let isBlocked: Bool

    enum CodingKeys: String, CodingKey {
        case isBlocked = "is_blocked"
    }
}
