//
//  ContentView.swift
//  1. Understanding @State
//
//  Created by Michał Grycki on 01/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var pokemonName = "Charmander"
    
    var body: some View {
        
        VStack {
            Text(pokemonName)
            pokemonName = "Maks"
            
            Button(
                action: { self.switchPokemon() },
                label: { Text("Switch") }
            )
        }}
    
    
    func switchPokemon() {
        pokemonName = "Pikachu"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
