//
//  UpdateAppBlockerRulesRequestModel.swift
//  
//
//  Created by Reza Khonsari on 8/31/21.
//

import Foundation

// MARK: - UpdateAppBlockerRulesRequestModel
public struct UpdateAppBlockerRulesRequestModel: Codable {
    let days: [Day]
    let applications: [String]
}

// MARK: - Day
public struct Day: Codable {
    let day, startTime, endTime, duration: String

    enum CodingKeys: String, CodingKey {
        case day
        case startTime = "start_time"
        case endTime = "end_time"
        case duration
    }
}
