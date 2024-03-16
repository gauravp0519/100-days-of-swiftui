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
        DayListView(items: items, title: "Day 29")
    }
}

#Preview {
    Day29View()
}
