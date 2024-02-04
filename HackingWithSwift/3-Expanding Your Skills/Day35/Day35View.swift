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
        .navigationTitle("Day 35")
    }
}

#Preview {
    Day35View()
}
