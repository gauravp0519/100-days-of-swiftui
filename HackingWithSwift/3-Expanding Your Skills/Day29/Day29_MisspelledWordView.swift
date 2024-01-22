//
//  Day29_MisspelledWordView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI

struct Day29_MisspelledWordView: View {
    var body: some View {
        let randomWord = randomWord() ?? ""
        let isMisspelled = isWordMisspelled(randomWord)
        Text("Random element: \(randomWord)")
        Text("Misspelled: \(isMisspelled ? "Yes" : "No")")
    }

    func randomWord() -> String? {
        let input = """
        hello
        holle
        lehol
        olleh
        """
        let words = input.components(separatedBy: "\n")
        let word = words.randomElement()
        let trimmedWord = word?.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedWord
    }

    func isWordMisspelled(_ word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: true, language: "en")
        let allGood = misspelledRange.location == NSNotFound
        return !allGood
    }
}

#Preview {
    Day29_MisspelledWordView()
}
