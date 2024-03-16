//
//  Day28View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI

struct Day28View: View {
    private let items: [ItemModel] = [
        .init(title: "BetterRest - using Section",
              description: "",
              view: AnyView(Day28_BetterRestSectionView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 28")
    }
}

#Preview {
    Day28View()
}
