//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import Foundation

public struct CreateChildModel: Codable {
    public let name: String
    public let birthday: String
    public let gender: String
    public let avatar: String
    public let isDefault: Bool
    public let childId: String
    
    enum CodingKeys: String, CodingKey {
        case name, birthday, gender, avatar
        case isDefault = "is_default"
        case childId = "_id"
    }
}
