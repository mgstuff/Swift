//
//  ContentView.swift
//  NotificationsForms
//
//  Created by Michał Grycki on 19/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var images = ["🗾","🌅","🌄","🌠","🎇","🌇","🗾","🌅","🌄","🌠","🎇","🌇"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("")) {
                    HStack {
                        Text("Show Previews")
                        Spacer()
                        NavigationLink(destination: Text("")) {
                            Text("Always").foregroundColor(Color.gray)
                        }.fixedSize()
                        
                    }
                }
                Section(header: Text("Notification previews will be shown whether the iPhone is locked or unlocked")
                    .foregroundColor(Color.gray).padding(10).lineLimit(nil)) {
                        NavigationLink(destination: Text("")) {
                            Text("Siri Suggestions")
                        }
                }
                
                Section(header: VStack(alignment: .leading) {
                    Text("Choose while apps can suggest shortcuts on the lock screen").lineLimit(nil).padding(2)
                    Text("NOTIFICATION STYLE").padding(2)
                }) {
                    ForEach(self.images, id: \.self) { image in
                        HStack {
                            Text(image).font(.largeTitle)
                            Text("Notification")
                        }
                    }
                }
            }
            .navigationBarTitle("Notifications", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
