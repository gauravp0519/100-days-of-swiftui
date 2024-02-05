//
//  Day36View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

struct Day36View: View {
    private let items: [ItemModel] = [
        .init(title: "@State with Classes", description: "", view: AnyView(Day36_StateWithClassesView())),
        .init(title: "@Observable Classes", description: "", view: AnyView(Day36_ObservableClassesView())),
        .init(title: "Presenting Sheet View", description: "", view: AnyView(Day36_PresentingSheetView())),
        .init(title: "Deleting Items from List", description: "", view: AnyView(Day36_DeletingItemsFromListView())),
        .init(title: "@AppStorage", description: "", view: AnyView(Day36_AppStorageView())),
        .init(title: "Encoding using Codable", description: "", view: AnyView(Day36_EncodingCodableView())),
        .init(title: "Decoding using Codable", description: "", view: AnyView(Day36_DecodingCodableView())),
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
        .navigationTitle("Day 36")
    }
}

#Preview {
    Day36View()
}
