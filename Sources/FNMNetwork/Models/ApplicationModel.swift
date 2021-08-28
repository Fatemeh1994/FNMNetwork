//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 6/6/1400 AP.
//

import Foundation


public struct ApplicationModel: Codable {
    public let id, currentVersion, name, pk: String
    public let icon: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case currentVersion = "current_version"
        case name, pk, icon
    }
}
