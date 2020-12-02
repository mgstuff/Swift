//
//  ContentView.swift
//  Grid
//
//  Created by Michał Grycki on 17/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var cities = ["🏛", "🕍","⛩","🛤","🕋","🕌","🏪","🏢"]
    @State private var sliderValue: CGFloat = 1
    
    var body: some View {
        NavigationView {
            VStack {
                
                Slider(value: $sliderValue, in: 1...8, step: 1)
                Text(String(format: "%.0f", self.sliderValue)).font(.system(size: 15)).padding().background(Color.blue).foregroundColor(Color.white).clipShape(Circle())
                
                List(self.cities.chunks(size: Int(self.sliderValue)), id:\.self) { chunk in
                    ForEach(chunk, id: \.self) { cities in
                        Text(cities).font(.system(size: 100))
                    }
                    
                }
            }
        .navigationBarTitle("Cities")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
