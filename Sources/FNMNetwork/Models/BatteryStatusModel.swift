//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/29/1400 AP.
//

import Foundation


public struct BatteryStatus: Codable {
    public let time: BatteryStatusTime
    public let capacity: String
}

enum BatteryStatusTime: String, Codable {
    case the19750211T014910000Z = "1975-02-11T01:49:10.000Z"
}

enum ChildID: String, Codable {
    case the6033740695691395Fd57D115 = "6033740695691395fd57d115"
}

enum DeviceID: String, Codable {
    case the6033740A95691395Fd57D116 = "6033740a95691395fd57d116"
}
