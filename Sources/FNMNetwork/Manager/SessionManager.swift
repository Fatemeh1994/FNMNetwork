//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation
import Alamofire


class SessionManager {
    
    private init() { }
    static var shared = SessionManager()
    
    var adopter = Adopter()
    
    lazy var session: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 20
        let delegate = Session.default.delegate
        let eventMonitors = [Logger()]
        let manager = Session(configuration: configuration,
                                   delegate: delegate,
                                   interceptor: Interceptor(adapter: adopter, retrier: Retrier()) ,
                                   eventMonitors: eventMonitors)
        return manager
    }()
}
