//
//  Task.swift
//  @State
//
//  Created by Michał Grycki on 29/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI



struct Task: Identifiable {
    
    // part of Identifiable protocol
    let id = UUID()
    let name: String
    
}
