//
//  Day31_WordsScrambleCompleteGameView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-22.
//

import SwiftUI

struct Day31_WordsScrambleCompleteGameView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""

    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    @State private var showAlert: Bool = false

    @State private var score: Int = 0

    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter a word", text: $newWord)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                }

                Section("Score: \(score)") {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
        }
        .alert(errorTitle, isPresented: $showAlert, actions: {}, message: {
            Text(errorMessage)
        })
        .toolbar(content: {
            Button("Restart game") {
                startGame()
            }
        })
        .navigationTitle(rootWord)
        .onAppear(perform: startGame)
        .onSubmit(addNewWord)
    }

    func startGame() {
        score = 0
        usedWords = []

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

        guard !isTooShort(word: word) else {
            wordError(title: "Word too short", message: "Word length should be greater than 2")
            return
        }

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
        score += 1
        newWord = ""
    }

    func isTooShort(word: String) -> Bool {
        word.count < 3
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
    Day31_WordsScrambleCompleteGameView()
}
