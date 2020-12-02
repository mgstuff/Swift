//
//  Car.swift
//  carFilter
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI

struct Car: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isRed: Bool
}

extension Car {
    
    static func all() -> [Car] {
        return [
            Car(name: "bmwred", imageURL: "bmwred", isRed: true),
            Car(name: "audired", imageURL: "audired", isRed: true),
            Car(name: "porschered", imageURL: "porschered", isRed: true),
            Car(name: "tesla", imageURL: "tesla", isRed: false)
        ]
    }
    
}
