//
//  CreateFenceRequestModel.swift
//  
//
//  Created by Reza Khonsari on 9/2/21.
//

import Foundation

public protocol FenceRequestModel: Codable {
    var title: String { get }
    var coordinates: [Double] { get }
    var radius: Int { get }
    var applications: [CreateFenceApplicationModel] { get }
}

public struct UpdateFenceRequestModel: FenceRequestModel {
    
    public let id: String
    public let title: String
    public let coordinates: [Double]
    public let radius: Int
    public let applications: [CreateFenceApplicationModel]
    
    public init(id: String, title: String, coordinates: [Double], radius: Int, applications: [CreateFenceApplicationModel]) {
        self.id = id
        self.title = title
        self.coordinates = coordinates
        self.radius = radius
        self.applications = applications
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "fence_id"
        case title
        case coordinates, radius
        case applications
    }
}

public struct CreateFenceRequestModel: FenceRequestModel {
    
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

public struct CreateFenceApplicationModel: Codable {
    
    public var isBlocked: Bool?
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
