//
//  ContentView.swift
//  GridSwiftUI
//
//  Created by Michał Grycki on 24/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["goat", "cat", "cat","elephant", "dog", "dear"]
    
    @State private var sliderValue: CGFloat = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Slider(value: $sliderValue, in: 1...8, step: 1)
                Text(String(format: "%.0f", self.sliderValue))
                // Creating list based on previously loaded array
                List(self.animals.chunks(size: Int(self.sliderValue)), id: \.self) { chunk in
                    ForEach(chunk, id: \.self) { animal in
                        Text(animal).font(.system(size: 20))
                    }
                }
                
            }.navigationBarTitle("Animals")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
