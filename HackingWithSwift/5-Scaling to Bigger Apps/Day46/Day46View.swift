//
//  Day46View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-10.
//

import SwiftUI

struct Day46View: View {
    private let items: [ItemModel] = [
        .init(title: "iExpense with Navigation", description: "", view: AnyView(Day46_iExpenseWithNavigationView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 46")
    }
}

#Preview {
    Day46View()
}
