//
//  Day37.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-07.
//

import SwiftUI

struct Day37View: View {
    private let items: [ItemModel] = [
        .init(title: "iExpense", description: "", view: AnyView(Day37_iExpenseView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 37")
    }
}

#Preview {
    Day37View()
}
