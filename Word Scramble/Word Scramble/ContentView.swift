//
//  ContentView.swift
//  Word Scramble
//
//  Created by Michał Grycki on 06/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    var body: some View
    {
        NavigationView {
            VStack {
                TextField("Enter new word", text: $newWord)
                
                // Passing directly to the list array of words
                // id: \.self is used to point at exact element from array
                List(usedWords, id: \.self) {
                    Text($0)
                }.textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            }.navigationBarTitle(rootWord)
        }

    }
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // exit if the remaining string is empty
        guard answer.count > 0 else {
            return
        }

        // extra validation to come

        usedWords.insert(answer, at: 0)
        newWord = ""
    }
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
