//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Michał Grycki on 01/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hi There").titleStyle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// 1. Create struct as ViewModifier
struct Title: ViewModifier {
    func body(content: Content) -> some View
    {
        content
        .font(.largeTitle)
        .padding()
        .foregroundColor(.red)
        
    }
}

// 2. Create extension to View so can easily use new struct
extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}


