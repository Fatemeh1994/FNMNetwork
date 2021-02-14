//
//  File.swift
//
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation

public class ListManager: ObservableObject {
    
    @Published public var listModel = [ListModel]()
    
    public init() {
        getList { } onFailure: { }
    }
    
    public func getList(onSuccess: @escaping () -> (), onFailure: @escaping () -> ()) {
        _ = WebServiceManager.shared.resumeDataTask(with: Router.list) { (data: [ListModel]) in
            self.listModel = data
            onSuccess()
        } failure: { error in
            onFailure()
        }
    }
}
