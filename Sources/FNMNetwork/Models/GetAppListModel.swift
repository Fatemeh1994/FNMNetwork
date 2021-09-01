//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/10/1400 AP.
//

import Foundation

public struct GetAppListModel: Codable {
    public let deleted: Bool
    public let id, appID, childID, deviceID: String
    public let v: Int
    public let createdAt, currentVersion: String
    public let firstInstalledTime: String?
    public let name, pk, status, updatedAt: String
    public let lastUpdatedTime: String?
    public let icon: String?
    public let uninstalledTime: String?

    enum CodingKeys: String, CodingKey {
        case deleted
        case id = "_id"
        case appID = "app_id"
        case childID = "child_id"
        case deviceID = "device_id"
        case v = "__v"
        case createdAt
        case currentVersion = "current_version"
        case firstInstalledTime = "first_installed_time"
        case name, pk, status, updatedAt
        case lastUpdatedTime = "last_updated_time"
        case icon
        case uninstalledTime = "uninstalled_time"
    }
}

//typealias GetAppListModel = [GetAppListModelElement]
