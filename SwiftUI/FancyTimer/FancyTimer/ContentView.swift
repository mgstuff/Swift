//
//  ContentView.swift
//  FancyTimer
//
//  Created by Michał Grycki on 01/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fancyTimer = ourTimer()
    
    // Thanks to observedObject(propery wrapper), view is goiong to be reloaded just after usage of button
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)").font(.largeTitle)
            Button("Increment Score") {
                self.userSettings.score += 1
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
