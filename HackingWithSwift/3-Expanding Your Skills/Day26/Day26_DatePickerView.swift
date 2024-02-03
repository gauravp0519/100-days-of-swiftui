//
//  Day26_DatePickerView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-14.
//

import SwiftUI

struct Day26_DatePickerView: View {
    @State private var wakeUpTimeStamp = Date.now

    var body: some View {
        ScrollView {
            DatePicker("Please enter a date", selection: $wakeUpTimeStamp)
            Divider()
            DatePicker("Please enter a date", selection: $wakeUpTimeStamp)
                .labelsHidden()
            Divider()
            DatePicker("Please enter a date", selection: $wakeUpTimeStamp, displayedComponents: .date)
                .labelsHidden()
            Divider()
            DatePicker("Please enter a date", selection: $wakeUpTimeStamp, displayedComponents: .hourAndMinute)
                .labelsHidden()
            Divider()
            DatePicker("Please enter a date", selection: $wakeUpTimeStamp, in: Date.now..., displayedComponents: .date)
                .labelsHidden()
            Divider()
            DatePicker("Please enter a date", selection: $wakeUpTimeStamp, in: Date.now ... Date.now.addingTimeInterval(86400 * 5), displayedComponents: .date)
                .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    Day26_DatePickerView()
}
