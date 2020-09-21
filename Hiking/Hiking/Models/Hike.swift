//
//  Hike.swift
//  Hiking
//
//  Created by Michał Grycki on 21/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation



struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
}

// Extension for Hike struct with function which returns array of Hikes created inside
extension Hike {
    static func all() -> [Hike] {
        return [
            
            Hike(name: "First", imageURL: "green", miles: 6.34),
            Hike(name: "Second", imageURL: "lake", miles: 16.34),
            Hike(name: "Third", imageURL: "autumn", miles: 56.34)
            
            ]
    }
}
