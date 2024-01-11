//
//  Day20View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-03.
//

import SwiftUI

struct Day20View: View {
    private let items: [ItemModel] = [
        .init(title: "ZStackView",
              description: "",
              view: AnyView(Day20_ZStackView())),
        .init(title: "Colors and Frames",
              description: "",
              view: AnyView(Day20_ColorsAndFramesView())),
        .init(title: "Background Material",
              description: "",
              view: AnyView(Day20_BackgroundMaterialView())),
        .init(title: "Linear Gradient",
              description: "",
              view: AnyView(Day20_LinearGradientView())),
        .init(title: "Radial Gradient",
              description: "",
              view: AnyView(Day20_RadialGradientView())),
        .init(title: "Angular Gradient",
              description: "",
              view: AnyView(Day20_AngularGradientView())),
        .init(title: "Buttons",
              description: "",
              view: AnyView(Day20_ButtonsView())),
        .init(title: "Custom Buttons",
              description: "",
              view: AnyView(Day20_CustomButtonsView())),
        .init(title: "Alert",
              description: "",
              view: AnyView(Day20_AlertView())),
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
        .navigationTitle("Day 20")
    }
}

#Preview {
    Day20View()
}
