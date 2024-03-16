//
//  Day35View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-02.
//

import SwiftUI

struct Day35View: View {
    private let items: [ItemModel] = [
        .init(title: "Edutainment Game", description: "", view: AnyView(Day35_EdutainmentGameView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 35")
    }
}

#Preview {
    Day35View()
}
