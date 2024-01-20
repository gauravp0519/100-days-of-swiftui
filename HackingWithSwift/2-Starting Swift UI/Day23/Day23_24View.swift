//
//  Day23_24View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-28.
//

import SwiftUI

struct Day23_24View: View {
    private let items: [ItemModel] = [
        .init(title: "Why structs",
              description: "Why does SwiftUI use structs for views?",
              view: AnyView(Day23_24_WhyStructsView())),
        .init(title: "SwiftUI View",
              description: "What is behind the main SwiftUI view?",
              view: AnyView(Day23_24_SwiftUIView())),
        .init(title: "Modifier order",
              description: "Why modifier order matters",
              view: AnyView(Day23_24_ModifierOrderView())),
        .init(title: "\"some View\"",
              description: "Why does SwiftUI use “some View” for its view type?",
              view: AnyView(Day23_24_SomeViewTypeView())),
        .init(title: "Conditional modifiers",
              description: "Apply modifiers only when a certain condition is met",
              view: AnyView(Day23_24_ConditionalModifiersView())),
        .init(title: "Environment modifiers",
              description: "Environment modifier vs Regular modifier",
              view: AnyView(Day23_24_EnvModifiersView())),
        .init(title: "Views as properties",
              description: "UI elements as Stored vs Computed properties",
              view: AnyView(Day23_24_ViewsAsPropertiesView())),
        .init(title: "Views groups",
              description: "Groups using @ViewBuilder",
              view: AnyView(Day_23_24_ViewGroupsView())),
        .init(title: "View composition",
              description: "Wrap identical views in a new custom view",
              view: AnyView(Day23_24_ViewCompositionView())),
        .init(title: "Custom modifiers",
              description: "Custom modifiers using `ViewModifier` protocol",
              view: AnyView(Day23_24_CustomCompositionView())),
        .init(title: "Custom containers",
              description: "Creating GridStack using generics",
              view: AnyView(Dat23_24_CustomContainersView())),
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
        .navigationTitle("Day 23-24")
    }
}

#Preview {
    Day23_24View()
}
