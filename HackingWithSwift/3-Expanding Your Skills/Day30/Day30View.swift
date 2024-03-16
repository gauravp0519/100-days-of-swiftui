//
//  Day30View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-22.
//

import SwiftUI

struct Day30View: View {
    private let items: [ItemModel] = [
        .init(title: "Word List",
              description: "",
              view: AnyView(Day30_WordListView())),
        .init(title: "Word Scramble Game",
              description: "",
              view: AnyView(Day30_WordsScrambleGameView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 30")
    }
}

#Preview {
    Day30View()
}
