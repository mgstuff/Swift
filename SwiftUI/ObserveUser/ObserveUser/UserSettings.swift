//
//  UserSettings.swift
//  ObserveUser
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    @Published var score: Int = 0
}
