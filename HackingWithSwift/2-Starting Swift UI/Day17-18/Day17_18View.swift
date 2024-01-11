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
        .navigationTitle("Day 17-18")
    }
}

#Preview {
    Day17_18View()
}
