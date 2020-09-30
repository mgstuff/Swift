//
//  Dish.swift
//  @State
//
//  Created by Michał Grycki on 29/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI


struct Dish: Identifiable {
    
    // Required for Identifiable protocol
    let id = UUID()
    let name: String
    let iamgeURL: String
    let isSpicy: Bool
}

extension Dish {
    
    static func all() -> [Dish] {
        return [
            Dish(name: "Kung Pow", iamgeURL: "kungpow", isSpicy: true),
            Dish(name: "Sweet Chicken", iamgeURL: "sweet", isSpicy: false)
        ]
    }
    
}
