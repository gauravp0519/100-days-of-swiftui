//
//  Day44View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day44View: View {
    private let items: [ItemModel] = [
        .init(title: "Programmatic Navigation View", description: "Navigation using Int path", view: AnyView(Day44_ProgrammaticNavigationView())),
        .init(title: "Navigation Path", description: "Navigation using NavigationPath", view: AnyView(Day44_NavigationPathView())),
        .init(title: "Navigation Pop", description: "Go back to root", view: AnyView(Day44_NavigationPopView())),
        .init(title: "Persisting Navigation Path", description: "Save NavigationStack paths using Codable", view: AnyView(Day44_PersistingNavigationPathView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 44")
    }
}

#Preview {
    Day44View()
}
