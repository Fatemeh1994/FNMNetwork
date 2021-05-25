//
//  File.swift
//  
//
//  Created by Reza Khonsari on 4/20/21.
//

import Foundation

public class NetworkStorage {
    
    private init() { }
    public static let shared: NetworkStorage = NetworkStorage()
    
    public var token: String? {
        get {
            UserDefaults.standard.string(forKey: "Token")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "Token")
        }
    }
    
    public var email: String? {
        get {
            UserDefaults.standard.string(forKey: "Email")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "Email")
        }
    }
    
    public var isParent: Bool? {
        get {
            UserDefaults.standard.value(forKey: "IsParent") as? Bool
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "IsParent")
        }
    }
    
}
