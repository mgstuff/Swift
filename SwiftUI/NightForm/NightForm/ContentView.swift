//
//  ContentView.swift
//  NightForm
//
//  Created by Michał Grycki on 19/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scheduled: Bool = false
    @State private var manuallyEnableUntilTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Night shift automatically shifts the colors of your display to the warmer end of the color spectrum after dark. This may help you get a better night's sleep.").padding().lineLimit(nil)) {
                    
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    
                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        
                        NavigationLink(destination: Text("Scheduled Settings")) {
                            
                            VStack {
                                Text("Sunset").foregroundColor(Color.blue)
                                Text("Sunrise").foregroundColor(Color.blue)
                            }
                            
                        }.fixedSize()
                        
                    }
                }
                
                Section(header: Text("")) {
                    Toggle(isOn: $manuallyEnableUntilTomorrow) {
                        Text("Manually Enable until tomorrow")
                    }
                }
                
                Section(header: Text("Color Temperature")) {
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More warm")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
