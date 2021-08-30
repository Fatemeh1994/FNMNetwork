//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation

/*
public struct AppsModel: Codable {
    public let name, pk, appID: String
    public let installed: Bool

        enum CodingKeys: String, CodingKey {
            case name, pk
            case appID = "app_id"
            case installed
        }
    }
 */


public struct Application: Codable {
    public let deleted: Bool
    public let id, appID, childID, deviceID: String
    public let v: Int
    public let createdAt, currentVersion, lastUpdatedTime, name: String
    public let pk, status, updatedAt: String
    public let icon: String

    enum CodingKeys: String, CodingKey {
        case deleted
        case id = "_id"
        case appID = "app_id"
        case childID = "child_id"
        case deviceID = "device_id"
        case v = "__v"
        case createdAt
        case currentVersion = "current_version"
        case lastUpdatedTime = "last_updated_time"
        case name, pk, status, updatedAt, icon
    }
}

