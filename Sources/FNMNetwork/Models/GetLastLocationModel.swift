//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/26/1400 AP.
//


import Foundation

public struct GetLastLocationModel: Codable {
    public let location: LocationModel
    public let deleted: Bool
    public let id, deviceID, childID, time: String
    public let createdAt, updatedAt: String
    public let v: Int
    public let metaData: LocationMetaDataModel

    enum CodingKeys: String, CodingKey {
        case location, deleted
        case id = "_id"
        case deviceID = "device_id"
        case childID = "child_id"
        case time, createdAt, updatedAt
        case metaData = "meta_data"
        case v = "__v"
    }
    
}

public struct LocationMetaDataModel: Codable {
    public let bat: String
    public let address: String

    enum CodingKeys: String, CodingKey {
        case bat, address
    }
}



