//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation

public class ListManager: ObservableObject {
    
    @Published public var listModel = [ListModel]()
    
    public init() { getList() }
    
    public func getList() {
        _ = WebServiceManager.shared.resumeDataTask(with: Router.list) { (data: [ListModel]) in
            self.listModel = data
        } failure: { error in }
    }
}
