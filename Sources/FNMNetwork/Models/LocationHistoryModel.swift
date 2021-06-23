//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation



public struct LocationHistoryModel: Codable {
    public let location: LocationModel
    public let deleted: Bool
    public let id: String
    public let deviceID: String
    public let childID: String
    public let metaData: MetaDataModel
//    public let time: LocationHistoryModelTime
    public let createdAt, updatedAt: String
    public let v: Int
    public let batteryStatus: BatteryStatus

    enum CodingKeys: String, CodingKey {
        case location, deleted
        case id = "_id"
        case deviceID = "device_id"
        case childID = "child_id"
        case metaData = "meta_data"
        case createdAt, updatedAt
        case v = "__v"
        case batteryStatus = "battery_status"
    }
}


