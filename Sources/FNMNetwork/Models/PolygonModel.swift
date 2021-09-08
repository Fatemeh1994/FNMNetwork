//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/31/1400 AP.
//

import Foundation


public struct PolygonModel: Codable {
    public let coordinates: [Double]
    public let id, type, address: String
    public let radius: Int

    enum CodingKeys: String, CodingKey {
        case coordinates
        case id = "_id"
        case type, radius, address
    }
}

