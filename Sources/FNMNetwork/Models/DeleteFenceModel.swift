//
//  File 2.swift
//  
//
//  Created by Fatemeh Najafi on 3/31/1400 AP.
//

import Foundation


public struct DeleteFenceModel: Codable {
    public let deleted: Bool
    public let id, deviceID, childID: String
    public let fences: [FenceModel]
    public let createdAt, updatedAt: String
    public let v: Int

    enum CodingKeys: String, CodingKey {
        case deleted
        case id = "_id"
        case deviceID = "device_id"
        case childID = "child_id"
        case fences, createdAt, updatedAt
        case v = "__v"
    }
}

