//
//  Day34View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day34View: View {
    private let items: [ItemModel] = [
        .init(title: "Guess the flag", description: "flag animations", view: AnyView(Day34_GuessTheFlagGameView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 34")
    }
}

#Preview {
    Day34View()
}
