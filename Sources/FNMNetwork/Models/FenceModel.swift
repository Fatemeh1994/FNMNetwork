//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation

public struct FenceModel: Codable {
    public let id: String
    public let polygon: PolygonModel
    public let isAllowed: Bool
    public let title, fenceDescription: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case polygon
        case isAllowed = "is_allowed"
        case title
        case fenceDescription = "description"
    }
}
