//
//  userSettings.swift
//  FancyTimer
//
//  Created by Michał Grycki on 01/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    
    // when we change this property it will be published and passed to all subscribes(variables in other views)
    @Published var score: Int = 0
}
