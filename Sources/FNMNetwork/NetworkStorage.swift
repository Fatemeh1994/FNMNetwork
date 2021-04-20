//
//  File.swift
//  
//
//  Created by Reza Khonsari on 4/20/21.
//

import Foundation

public class NetworkStorage {
    
    private init() { }
    public static shared: NetworkStorage = NetworkStorage()
    
    public var token: String? {
        get {
            UserDefaults.standard.string(forKey: "Token")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "Token")
        }
    }
    
}
