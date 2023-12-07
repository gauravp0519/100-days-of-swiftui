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
        .navigationTitle("Day 16")
    }
}

struct Day16View_Previews: PreviewProvider {
    static var previews: some View {
        Day16View()
    }
}
