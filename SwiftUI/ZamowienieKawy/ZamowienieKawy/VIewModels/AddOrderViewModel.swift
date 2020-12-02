//
//  AddOrderViewModel.swift
//  ZamowienieKawy
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI

class addOrderViewModel {
    var name: String = ""
    var type: String = ""

    func saveOrder() {
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
    
    
    
}
