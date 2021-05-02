//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import Foundation

public struct PairCodeModel: Codable {
    
    public let pairCode: String
    
    enum CodingKeys: String, CodingKey {
        case pairCode = "pair_code"
    }
    
}
