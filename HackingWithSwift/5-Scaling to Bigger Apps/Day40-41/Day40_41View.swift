//
//  Day40_41View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-19.
//

import SwiftUI

struct Day40_41View: View {
    private let items: [ItemModel] = [
        .init(title: "Missions View", description: "", view: AnyView(Day40_41_MissionsView())),
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
        .navigationTitle("Day 40-41")
    }
}

#Preview {
    Day40_41View()
}
