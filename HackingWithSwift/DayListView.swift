//
//  DayListView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-13.
//

import SwiftUI

struct DayListView: View {
    @State private var appNavigation = AppNavigation.shared
    private let items: [ItemModel]
    private let title: String

    init(items: [ItemModel], title: String) {
        self.items = items
        self.title = title
    }

    var body: some View {
        NavigationStack(path: $appNavigation.path) {
            List {
                ForEach(self.items) { item in
                    NavigationLink(value: item) {
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
            .navigationDestination(for: ItemModel.self) {
                $0.view
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(title)
        }
    }
}

#Preview {
    DayListView(items: [
        .init(title: "Title 1", description: "Description 1", view: AnyView(Text("Hello 1"))),
        .init(title: "Title 2", description: "Description 2", view: AnyView(Text("Hello 2"))),
    ], title: "Day List")
}
