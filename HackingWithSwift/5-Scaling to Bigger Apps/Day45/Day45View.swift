//
//  Day45View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day45View: View {
    private let items: [ItemModel] = [
        .init(title: "Custom NavigationBar appearance", description: "", view: AnyView(Day45_NavigationBarCustomAppearanceView())),
        .init(title: "Toolbar Buttons", description: "", view: AnyView(Day45_ToolbarButtonsView())),
        .init(title: "Editable Navigation Title", description: "", view: AnyView(Day45_EditableNavigationTitleView())),
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
        .navigationTitle("Day 45")
    }
}

#Preview {
    Day45View()
}
