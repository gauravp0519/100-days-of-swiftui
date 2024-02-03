//
//  Day32View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day32View: View {
    private let items: [ItemModel] = [
        .init(title: "Implicit animations",
              description: "",
              view: AnyView(Day32_ImplicitAnimationsView())),
        .init(title: "Customizing animations",
              description: "",
              view: AnyView(Day32_CustomizingAnimationsView())),
        .init(title: "Animating bindings",
              description: "",
              view: AnyView(Day32_AnimatingBindingsView())),
        .init(title: "Explicit animations",
              description: "",
              view: AnyView(Day32_ExplicitAnimationsView())),
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
        .navigationTitle("Day 32")
    }
}

#Preview {
    Day32View()
}
