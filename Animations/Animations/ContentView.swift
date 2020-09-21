//
//  ContentView.swift
//  Animations
//
//  Created by Michał Grycki on 07/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 0.0
    @State private var enabled = false
    
    var body: some View
    {
        Button("Tap Me") {
            self.enabled.toggle()
            
        } .background(enabled ? Color.blue : Color.red)
            .frame(width: 200, height: 200)
            .foregroundColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
