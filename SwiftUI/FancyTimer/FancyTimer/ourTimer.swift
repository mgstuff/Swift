//
//  ourTimer.swift
//  FancyTimer
//
//  Created by Michał Grycki on 01/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ourTimer: ObservableObject {
    @Published var value: Int = 0
    
    init() {
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.value += 1
        }
        
    }
}
