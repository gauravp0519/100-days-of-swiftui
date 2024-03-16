//
//  Day26View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-14.
//

import SwiftUI

struct Day26View: View {
    private let items: [ItemModel] = [
        .init(title: "Stepper",
              description: "",
              view: AnyView(Day26_StepperView())),
        .init(title: "DatePicker",
              description: "",
              view: AnyView(Day26_DatePickerView())),
        .init(title: "Date/Time formatters", description: "", view: AnyView(Day26_DateTimeFormattersView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 26")
    }
}

#Preview {
    Day26View()
}
