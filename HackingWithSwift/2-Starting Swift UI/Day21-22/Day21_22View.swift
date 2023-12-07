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
        NavigationStack {
            List {
                ForEach(self.items) { item in
                    NavigationLink(destination: item.view) {
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            if !item.description.isEmpty {
                                Text(item.description)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Day 21-22")
    }
}

struct Day21_22View_Previews: PreviewProvider {
    static var previews: some View {
        Day21_22View()
    }
}
