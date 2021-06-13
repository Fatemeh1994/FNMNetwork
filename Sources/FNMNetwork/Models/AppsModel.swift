//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/12/1400 AP.
//

import Foundation


public struct AppsModel: Codable {
    public let applicationIcon, applicationName, pk, appID: String
    public let installed: Bool

     enum CodingKeys: String, CodingKey {
         case applicationIcon = "application_icon"
         case applicationName = "application_name"
         case pk
         case appID = "app_id"
         case installed
     }

}

