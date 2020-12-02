//
//  OrderListViewModel.swift
//  ZamowienieKawy
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [orderViewModel]()
    
    init() {
          fetchAllOrders()
      }
    
    func fetchAllOrders() {
        self.orders = CoreDataManager.shared.getAllOrder().map(orderViewModel.init)
        print(self.orders)
    }
    
    func deleteOrder(_ orderVM: orderViewModel) {
        CoreDataManager.shared.deleteOrder(name: orderVM.name)
        fetchAllOrders()
    }
    
  
    
    
}

class orderViewModel {
    var name = ""
    var type = ""
    
    init(order: Order) {
        self.name = order.name!
        self.type = order.type!
    }
}
