//
//  Day37.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-07.
//

import SwiftUI

struct Day37View: View {
    private let items: [ItemModel] = [
        .init(title: "iExpense", description: "", view: AnyView(Day37_iExpenseView())),
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
        .navigationTitle("Day 37")
    }
}

#Preview {
    Day37View()
}
