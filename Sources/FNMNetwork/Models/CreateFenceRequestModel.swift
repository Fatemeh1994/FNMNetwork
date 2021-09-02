//
//  CreateFenceRequestModel.swift
//  
//
//  Created by Reza Khonsari on 9/2/21.
//

import Foundation

public struct CreateFenceRequestModel: Codable {
    
    public let title: String
    public let coordinates: [Double]
    public let radius: Int
    public let applications: [CreateFenceApplicationModel]
    
    public init(title: String, coordinates: [Double], radius: Int, applications: [CreateFenceApplicationModel]) {
        self.title = title
        self.coordinates = coordinates
        self.radius = radius
        self.applications = applications
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case coordinates, radius
        case applications
    }
}

public struct CreateFenceApplicationModel: ApplicationRules {
    
    public var isBlocked: Bool
    public var application: String
    
    public init(isBlocked: Bool, application: String) {
        self.isBlocked = isBlocked
        self.application = application
    }
    
    enum CodingKeys: String, CodingKey {
        case isBlocked = "is_blocked"
        case application
    }
}
