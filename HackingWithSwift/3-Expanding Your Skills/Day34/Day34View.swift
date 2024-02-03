//
//  Day34View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day34View: View {
    private let items: [ItemModel] = [
        .init(title: "Guess the glag", description: "flag animations", view: AnyView(Day34_GuessTheFlagGameView())),
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
        .navigationTitle("Day 34")
    }
}

#Preview {
    Day34View()
}
