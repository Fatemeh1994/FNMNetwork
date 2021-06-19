//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 3/26/1400 AP.
//

import Foundation


public struct LocationModel: Codable {
   
    public let coordinates: [Double]
    public let type: TypeEnum
    
    enum TypeEnum: String, Codable {
        case point = "Point"
    }
}



