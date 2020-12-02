//
//  ContentView.swift
//  Odtwarzacz
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let nowPlaying = NowPlaying(name: "Fincial Podcast", track: "investing")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(self.nowPlaying.name).font(.title).foregroundColor(self.isPlaying ? .green : .black)
            Text(self.nowPlaying.track).foregroundColor(.secondary)
            PlayButton(isPlaying: $isPlaying)
        }
    }
    
    
    struct PlayButton: View {
        
        @Binding var isPlaying: Bool
        
        var body: some View {
            Button(action: {
                self.isPlaying.toggle()
                
            }) {
                Text("Play")
            }.padding(12)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
