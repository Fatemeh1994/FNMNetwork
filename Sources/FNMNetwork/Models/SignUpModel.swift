//
//  File.swift
//  
//
//  Created by Reza Khonsari on 4/20/21.
//

import Foundation

public struct SignUpModel: Codable {
    public let token: String
    public let parentEmail: String?
    
    
    enum CodingKeys: String, CodingKey {
        case token
        case parentEmail = "parent_email"

    }
}
