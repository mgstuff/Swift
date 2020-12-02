//
//  ContentView.swift
//  NewObservableObject
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var speedTimer = SpeedTimer()
    
    var body: some View {
        Text("\(self.speedTimer.value)").font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
