//
//  Day26_DateTimeFormattersView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-14.
//

import SwiftUI

private extension Calendar.Component {
    static var allCases: Set<Calendar.Component> {
        [.era, .year, .month, .day, .hour, .minute, .second, .weekday, .weekdayOrdinal, .quarter, .weekOfMonth, .weekOfYear, .yearForWeekOfYear, .nanosecond, .calendar, .timeZone]
    }
}

struct Day26_DateTimeFormattersView: View {
    private var today8AM: Date {
        var components = Calendar.current.dateComponents(Calendar.Component.allCases, from: Date.now)
        components.hour = 8
        components.minute = 0
        components.second = 0
        components.nanosecond = 0
        let date = Calendar.current.date(from: components)
        return date ?? .now
    }

    var body: some View {
        Text(today8AM, format: .dateTime.day().month().year().hour().minute())
        Divider()
        Text(today8AM.formatted(date: .long, time: .complete))
    }
}

#Preview {
    Day26_DateTimeFormattersView()
}
