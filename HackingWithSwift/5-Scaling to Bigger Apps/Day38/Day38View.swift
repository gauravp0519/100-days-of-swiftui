//
//  Day38View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-08.
//

import SwiftUI

struct Day38View: View {
    private let items: [ItemModel] = [
        .init(title: "iExpense", description: "", view: AnyView(Day38_iExpenseView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 38")
    }
}

#Preview {
    Day38View()
}
