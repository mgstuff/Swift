//
//  ContentView.swift
//  NewBinding
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = "Hello"
    
    var body: some View {
        VStack {
            Text(name)
            
            TextField("Enter your name", text: $name)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
