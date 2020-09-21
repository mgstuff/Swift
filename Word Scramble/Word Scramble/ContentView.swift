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
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    var body: some View
    {
        NavigationView {
            VStack {
                TextField("Enter new word", text: $newWord, onCommit: addNewWord).autocapitalization(.none)
                
                // Passing directly to the list array of words
                // id: \.self is used to point at exact element from array
                List(usedWords, id: \.self) {
                    Image(systemName: "\($0.count).circle")
                    Text($0)
                }.textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            }.navigationBarTitle(rootWord).onAppear(perform: startGame).alert(isPresented: $showingError) { () -> Alert in
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
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
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }

        guard isPossible(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }

        guard isReal(word: answer) else {
            wordError(title: "Word not possible", message: "That isn't a real word.")
            return
        }

        //.insert(answer, at:0) is used to insert elements at the beggining of array. If we had used append(answer) then new element would be added at the end of the list
        usedWords.insert(answer, at: 0)
        newWord = ""
    }
    
    
    func startGame() {
        // 1. Find the URL for start.txt in our app bundle, checking for file start.txt
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            // 2. Load start.txt into a string
            if let startWords = try? String(contentsOf: startWordsURL) {
                // 3. Split the string up into an array of strings, splitting on line breaks
                let allWords = startWords.components(separatedBy: "\n")

                // 4. Pick one random word, or use "silkworm" as a sensible default
                rootWord = allWords.randomElement() ?? "silkworm"

                // If we are here everything has worked, so we can exit
                return
            }
        }

        // If were are *here* then there was a problem – trigger a crash and report the error
        fatalError("Could not load start.txt from bundle.")
    }
    
    
    // 1. Method to check if word was already used
    func isOriginal(word: String) -> Bool {
        // returns might not be needed but just to be super clear
        !usedWords.contains(word)
    }
    
    
    // 2. Method to check if word is possible to be created
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord

        // Loop to go through every letter in string
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }

        return true
    }
    
    
    
    // 3. Method to check for misspelled words
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
    
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
