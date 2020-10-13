//
//  Binding.swift
//  @State
//
//  Created by Michał Grycki on 30/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct Binding: View {
    
    // Any time this variable gonna change body will be rendered again
    @State var name: String = ""
    
    private func printName() {
        print(self.name)
    }
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Put a text", text: $name).padding(12)
            
            Button(action: printName) {
                Text("Show name value")
            }
        }
        
    }
}

struct Binding_Previews: PreviewProvider {
    static var previews: some View {
        Binding()
    }
}
