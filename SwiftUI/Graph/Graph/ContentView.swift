//
//  ContentView.swift
//  Graph
//
//  Created by Michał Grycki on 19/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Circle().fill(Color.red).frame(width: 200, height:200)
            Circle().stroke(Color.green, lineWidth: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
