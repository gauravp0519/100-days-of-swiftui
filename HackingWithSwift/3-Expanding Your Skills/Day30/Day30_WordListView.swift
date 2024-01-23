//
//  Day30_WordListView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-22.
//

import SwiftUI

struct Day30_WordListView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""

    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter a word", text: $newWord)
                        .textInputAutocapitalization(.never)
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
        .navigationTitle(rootWord)
        .onSubmit(addNewWord)
    }

    func addNewWord() {
        let word = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard !word.isEmpty else { return }

        withAnimation {
            usedWords.insert(word, at: 0)
        }
        newWord = ""
    }
}

#Preview {
    Day30_WordListView()
}
