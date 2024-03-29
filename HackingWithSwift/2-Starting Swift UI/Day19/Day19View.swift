//
//  Day19View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day19View: View {
    private let items: [ItemModel] = [
        .init(title: "Temperature Conversion app",
              description: "",
              view: AnyView(Day19_TemperatureConversionView())),
        .init(title: "Length Conversion app",
              description: "",
              view: AnyView(Day19_LengthConversionView())),
        .init(title: "Time Conversion app",
              description: "",
              view: AnyView(Day19_TimeConversionView())),
        .init(title: "Volume Conversion app",
              description: "",
              view: AnyView(Day19_VolumeConversionView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 19")
    }
}

#Preview {
    Day19View()
}
