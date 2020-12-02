//
//  Food.swift
//  ListNavigation
//
//  Created by Michał Grycki on 17/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation

struct Dish {
    let name: String
    let imageURL: String
    let price: Double
}

extension Dish {
    
    static func all() -> [Dish] {
        return [
            Dish(name: "Salmon", imageURL: "salmon", price: 20.99),
            Dish(name: "Pasta", imageURL: "pasta", price: 20.99),
            Dish(name: "Soup", imageURL: "soup", price: 14.99),
            Dish(name: "Bacon", imageURL: "bacon", price: 10.99)
        ]
    }
}
