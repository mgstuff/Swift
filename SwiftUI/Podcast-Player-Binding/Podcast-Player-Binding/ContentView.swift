//
//  ContentView.swift
//  Podcast-Player-Binding
//
//  Created by Michał Grycki on 30/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var episode = Episode(name: "Macbbreak", track: "WWDC 2019")
    
    // When State changes the whole view will be reloaded, here this value is being changed in PlayButton structure
    @State private var isPlaying = false
    
    var body: some View {
        
        VStack {
            Text(self.episode.name).font(.title).padding().foregroundColor(self.isPlaying ? .green : .black)
            Text(self.episode.track).foregroundColor(.secondary)
            //Content view will get updated value from PlayButton struct as is @Binding
            PlayButton(isPlaying: $isPlaying, exactTitle: self.$episode.name)
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    @Binding var exactTitle: String
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
            // Due to binding title will be changed also on the top "ancestor" structure
            self.exactTitle = "New Song"
        }) {
            VStack {
                Text("Play").padding()
                Text("Now Playing: \(exactTitle)")
            }
            
        }.padding(12)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
