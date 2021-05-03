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
    
    public var name: String? {
        get {
            UserDefaults.standard.string(forKey: "name")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "name")
        }
    }
    
    public var deviceType: String? {
        get {
            UserDefaults.standard.string(forKey: "deviceType")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "deviceType")
        }
    }
    
}
