//
//  Day42View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct Day42View: View {
    private let items: [ItemModel] = [
        .init(title: "Missions View v2", description: "", view: AnyView(Day42_MissionsView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 42")
    }
}

#Preview {
    Day42View()
}
