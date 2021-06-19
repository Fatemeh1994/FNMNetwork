//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation


public struct MetaDataModel: Codable {
    public let bat: String
}

enum LocationHistoryModelTime: String, Codable {
    case the20210212T070357000Z = "2021-02-12T07:03:57.000Z"
    case the20210212T095037000Z = "2021-02-12T09:50:37.000Z"
}
