//
//  Day29View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI

struct Day29View: View {
    private let items: [ItemModel] = [
        .init(title: "List - Dynamic content",
              description: "",
              view: AnyView(Day29_DynamicContentListView())),
        .init(title: "List - Static & Dynamic content",
              description: "",
              view: AnyView(Day29_StaticAndDynamicContentListView())),
        .init(title: "Loading file content",
              description: "Get string content from local Bundle file",
              view: AnyView(Day29_LoadingBundleFileView())),
        .init(title: "Working with Strings",
              description: "check misspelled words",
              view: AnyView(Day29_MisspelledWordView())),
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
        .navigationTitle("Day 29")
    }
}

#Preview {
    Day29View()
}
