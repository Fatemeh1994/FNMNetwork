//
//  File.swift
//  
//
//  Created by Reza Khonsari on 5/2/21.
//

import Foundation

public struct CreateDeviceModel: Codable {
    public var isDefault: Bool
    public let topics: [String]
    public let deviceId: String
    public let deleted: Bool
    public let platform: String
    public let owner: String
    public let parentId: String
    public let role: String
    public let createdAt: String
    public let updatedAt: String
    public let version: Int
    public let status: String?
    public let isActive: Bool
    public let agentID: String?
    public let deviceName: String?
    public let displayName: String?
    
    public var isOnline: Bool { status != "offline" }
        
    enum CodingKeys: String, CodingKey {
        case deleted, platform, owner, role, createdAt, updatedAt
        case isDefault = "is_default"
        case deviceId = "_id"
        case version = "__v"
        case parentId = "parent_id"
        case status
        case isActive = "is_active"
        case agentID = "agent_id"
        case deviceName = "device_name"
        case displayName = "display_name"
        case topics
    }
}


//
//{
//   "is_default":false,
//   "is_active":true,
//   "topics":[
//      
//   ],
//   "deleted":false,
//   "_id":"60ad24203791fc5ef25a13dc",
//   "platform":"ios",
//   "owner":"60ad241e3791fc5ef25a13db",
//   "parent_id":"60ace0cb0aeec83f22d2516a",
//   "role":"child",
//   "createdAt":"2021-05-25T16:21:52.498Z",
//   "updatedAt":"2021-06-15T10:58:30.454Z",
//   "__v":0,
//   "agent_id":"57AF150B-022C-4966-B769-4B33B04D782E",
//   "device_name":"Reza iPhone",
//   "display_name":"57AF150B-022C-4966-B769-4B33B04D782E_ios",
//   "status":"offline"
//}



