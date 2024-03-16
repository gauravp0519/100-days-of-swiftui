//
//  Day17_18View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day17_18View: View {
    private let items: [ItemModel] = [
        .init(title: "Formatting Text",
              description: "#currency #keyboardType",
              view: AnyView(Day17_18_FormattingTextView())),
        .init(title: "Hiding keyboard",
              description: "#toolbarItemGroup",
              view: AnyView(Day17_18_HidingKeyboardView())),
        .init(title: "Check splitting app",
              description: "",
              view: AnyView(Day17_18_CheckSplittingView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 17-18")
    }
}

#Preview {
    Day17_18View()
}
