//
//  ContentView.swift
//  carFilter
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isRed = false
    
    var model = Car.all()
    
    var body: some View {
        List {
            Toggle(isOn: $isRed) {
                Text("red")
            }
            ForEach(model.filter { $0.isRed == self.isRed }) { car in
                HStack {
                    Image(car.imageURL).resizable().frame(width:100, height: 100)
                    Text(car.name).font(.title).lineLimit(nil)
                    Spacer()
                    if(car.isRed)
                    {
                        Image("red").resizable().frame(width: 30, height: 30)
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
