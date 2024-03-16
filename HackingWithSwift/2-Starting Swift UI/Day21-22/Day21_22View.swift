//
//  Day21_22View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day21_22View: View {
    private let items: [ItemModel] = [
        .init(title: "Stacking flags button",
              description: "",
              view: AnyView(Day21_22_StackingFlagButtonsView())),
        .init(title: "Showing score alert",
              description: "",
              view: AnyView(Day21_22_ShowScoreWithAlertView())),
        .init(title: "Flag styling",
              description: "",
              view: AnyView(Day21_22_FlagStylingView())),
        .init(title: "Upgrading design",
              description: "",
              view: AnyView(Day21_22_UpgradingDesignView())),
        .init(title: "Guess the flag game",
              description: "",
              view: AnyView(Day21_22_GuessTheFlagGameView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 21-22")
    }
}

#Preview {
    Day21_22View()
}
