//
//  Day40_41View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-19.
//

import SwiftUI

struct Day40_41View: View {
    private let items: [ItemModel] = [
        .init(title: "Missions View", description: "", view: AnyView(Day40_41_MissionsView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 40-41")
    }
}

#Preview {
    Day40_41View()
}
