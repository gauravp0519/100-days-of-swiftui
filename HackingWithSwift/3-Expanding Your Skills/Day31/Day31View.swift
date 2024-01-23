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
        .navigationTitle("Day 31")
    }
}

#Preview {
    Day31View()
}
