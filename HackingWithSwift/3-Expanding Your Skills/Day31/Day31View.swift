//
//  Day31View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-22.
//

import SwiftUI

struct Day31View: View {
    private let items: [ItemModel] = [
        .init(title: "Word Scramble Game with score",
              description: "",
              view: AnyView(Day31_WordsScrambleCompleteGameView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 31")
    }
}

#Preview {
    Day31View()
}
