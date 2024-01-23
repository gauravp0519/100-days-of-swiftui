//
//  Day30_WordsScrambleGameView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-22.
//

import SwiftUI

struct Day30_WordsScrambleGameView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""

    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter a word", text: $newWord)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                }

                Section {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
        }
        .alert(errorTitle, isPresented: $showAlert, actions: {

        }, message: {
            Text(errorMessage)
        })
        .navigationTitle(rootWord)
        .onAppear(perform: startGame)
        .onSubmit(addNewWord)
    }

    func startGame() {
        if let fileUrl = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let fileContentString = try? String(contentsOf: fileUrl) {
                let words = fileContentString.components(separatedBy: "\n")
                let randomWord = words.randomElement()?.trimmingCharacters(in: .whitespacesAndNewlines)

                rootWord = randomWord ?? "silkworm"
                return
            }
        }

        fatalError("Could not load start.txt from bundle.")
    }

    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showAlert = true
    }

    func addNewWord() {
        let word = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard !word.isEmpty else { return }

        guard isOriginal(word: word) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }

        guard isPossible(word: word) else {
            wordError(title: "Word not possible", message: "You can't spell that word from '\(rootWord)'!")
            return
        }

        guard isReal(word: word) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }

        withAnimation {
            usedWords.insert(word, at: 0)
        }
        newWord = ""
    }

    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }

    func isPossible(word: String) -> Bool {
        var tempWord = rootWord

        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }

        return true
    }

    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
}

#Preview {
    Day30_WordsScrambleGameView()
}
