//
//  File.swift
//  
//
//  Created by Fatemeh Najafi on 2/14/21.
//

import Foundation
import Alamofire

class Logger: EventMonitor {
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        debugPrint("🦋🦋🦋🦋🦋🦋")
        debugPrint(response)
        debugPrint("🦋🦋🦋🦋🦋🦋")
    }
}
