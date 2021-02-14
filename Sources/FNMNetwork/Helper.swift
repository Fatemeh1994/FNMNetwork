//
// Created by Fatemeh Najafi on 2/14/21.
// Copyright © 2021 risoapps. All rights reserved.

import Foundation

extension DateFormatter {
    
    static let EEEMMMdyy: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, MMM d, ''yy"
        return formatter
    }()
    
    static let dMMyyyy: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d/MM/yyyy"
        return formatter
    }()
    
}
