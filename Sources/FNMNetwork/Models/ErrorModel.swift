//
//  File.swift
//  
//
//  Created by Reza Khonsari on 4/20/21.
//

import Foundation

public struct ErrorModel: Codable {
    
    public let message: String
    public let errorCode: Int?
    
    enum CodingKeys: String, CodingKey {
        case message
        case errorCode = "error_code"
    }

}
