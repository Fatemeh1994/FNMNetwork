//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//


import Foundation

public struct RulesModel: Codable {
    public let appID: String
    public let isBlocked: Bool
    public let pk: String

    enum CodingKeys: String, CodingKey {
        case appID = "app_id"
        case isBlocked = "is_blocked"
        case pk
    }
}


