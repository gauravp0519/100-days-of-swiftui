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
        .navigationTitle("Day 28")
    }
}

#Preview {
    Day28View()
}
