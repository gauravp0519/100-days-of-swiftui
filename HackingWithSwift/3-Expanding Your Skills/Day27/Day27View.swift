//
//  Day27View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-14.
//

import SwiftUI

struct Day27View: View {
    private let items: [ItemModel] = [
        .init(title: "Basic layout",
              description: "",
              view: AnyView(Day27_BasicLayoutView())),
        .init(title: "Connect CoreML",
              description: "",
              view: AnyView(Day27_ConnectCoreMLView())),
        .init(title: "BetterRest - using Form",
              description: "",
              view: AnyView(Day27_BetterRestFormView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 27")
    }
}

#Preview {
    Day27View()
}
