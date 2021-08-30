//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation


public struct AppsModel: Codable {
    public let name, pk, appID: String
    public let installed: Bool

        enum CodingKeys: String, CodingKey {
            case name, pk
            case appID = "app_id"
            case installed
        }
    }

