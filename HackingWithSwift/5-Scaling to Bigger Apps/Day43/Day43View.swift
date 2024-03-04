//
//  Day43View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day43View: View {
    private let items: [ItemModel] = [
        .init(title: "Simple Navigation Link problems", description: "", view: AnyView(Day43_SimpleNavigationLinkView())),
        .init(title: "Navigation with NavigationDestination", description: "", view: AnyView(Day43_NavigationDestinationView())),
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
        .navigationTitle("Day 43")
    }
}

#Preview {
    Day43View()
}
