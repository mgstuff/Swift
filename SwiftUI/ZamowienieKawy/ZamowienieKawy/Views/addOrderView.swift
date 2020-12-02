//
//  addOrderView.swift
//  ZamowienieKawy
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct addOrderView: View {
    
    @Binding var isPresented: Bool
    @State var addOrderVM = addOrderViewModel()
    
    var body: some View {
        
        NavigationView {
            
            Group {
                
                VStack {
                    TextField("Enter name", text: self.$addOrderVM.name) 
                    Picker(selection: self.$addOrderVM.type, label: Text("")) {
                        Text("Cappucino").tag("cap")
                        Text("Black coffe").tag("blc")
                        Text("Espresso").tag("esp")
                        }.pickerStyle(SegmentedPickerStyle()).padding(12)
                    
                    Button("Place Order") {
                        self.addOrderVM.saveOrder()
                        self.isPresented = false
                    }.padding().foregroundColor(Color.white).background(Color.green).cornerRadius(10)
                }
                
            }.padding()
            .navigationBarTitle("Order a coffe")
        }
    }
}

struct addOrderView_Previews: PreviewProvider {
    static var previews: some View {
        addOrderView(isPresented: .constant(false))
    }
}
