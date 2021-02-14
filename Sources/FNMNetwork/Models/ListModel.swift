//
// Created by Fatemeh Najafi on 2/14/21.
// Copyright © 2021 risoapps. All rights reserved.


import Foundation

public struct ListModel: Hashable, Identifiable, Codable {

    public let id: Int
    public let title : String
    public let description: String
    public let author: String
    public let releaseDate: String
    public let image: URL?
    
    enum CodingKeys: String, CodingKey {
        case id, title, description, author, image
        case releaseDate = "release_date"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
        description = try container.decode(String.self, forKey: .description)
        author = try container.decode(String.self, forKey: .author)
        let dateString = DateFormatter.dMMyyyy.date(from: try container.decode(String.self, forKey: .releaseDate)) ?? .init()
        releaseDate = DateFormatter.EEEMMMdyy.string(from: dateString)
        let imageURLString = try container.decode(String.self, forKey: .image)
        image = URL(string: imageURLString)
    }
    
    public init(id: Int, title: String, description: String, author: String, releaseDate: String, image: URL?) {
        self.id = id
        self.title = title
        self.description = description
        self.author = author
        self.releaseDate = releaseDate
        self.image = image
    }

}
