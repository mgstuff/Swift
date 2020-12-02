//
//  ContentView.swift
//  ZamowienieKawy
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    @ObservedObject var orderListVM: OrderListViewModel
    
    init() {
        self.orderListVM = OrderListViewModel()
    }
    
    private func delete(at offsets: IndexSet) {
        offsets.forEach { index in
            let orderVM = self.orderListVM.orders[index]
            self.orderListVM.deleteOrder(orderVM)
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(self.orderListVM.orders, id: \.name) { order in
                    HStack {
                        Image(order.type).resizable().frame(width: 100, height: 100).cornerRadius(10)
                        Text(order.name).font(.largeTitle).padding([.leading], 10)
                    }
                }.onDelete(perform: delete)
            }
            .sheet(isPresented: $isPresented, onDismiss: {
                self.orderListVM.fetchAllOrders()
            }, content: {
                addOrderView(isPresented: self.$isPresented)
            })
            .navigationBarTitle("Orders")
            .navigationBarItems(trailing: Button("New Orders") {
                self.isPresented = true
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
