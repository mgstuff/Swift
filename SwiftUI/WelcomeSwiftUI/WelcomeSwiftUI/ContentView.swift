//
//  ContentView.swift
//  WelcomeSwiftUI
//
//  Created by Michał Grycki on 17/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("first")
            Image("great-place")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(60)
            .padding(.all)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
