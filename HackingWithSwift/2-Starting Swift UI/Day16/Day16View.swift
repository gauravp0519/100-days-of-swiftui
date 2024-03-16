//
//  Day16View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16View: View {
    private let items: [ItemModel] = [
        .init(title: "Hello world",
              description: "",
              view: AnyView(Day16_HelloWorldView())),
        .init(title: "Form View",
              description: "",
              view: AnyView(Day16_FormView())),
        .init(title: "Navigation Bar",
              description: "",
              view: AnyView(Day16_NavigationBarView())),
        .init(title: "@State",
              description: "",
              view: AnyView(Day16_StateView())),
        .init(title: "Binding @State to UI",
              description: "",
              view: AnyView(Day16_BindingStateView())),
        .init(title: "Create Views in loop",
              description: "",
              view: AnyView(Day16_LoopView())),
        .init(title: "Picker",
              description: "",
              view: AnyView(Day16_PickerView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 16")
    }
}

#Preview {
    Day16View()
}
