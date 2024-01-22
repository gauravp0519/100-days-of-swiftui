//
//  Day28_BetterRestSectionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI
import CoreML

struct Day28_BetterRestSectionView: View {
    @State private var wakeUp: Date = {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }()
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1

    var body: some View {
        NavigationStack {
            Form {
                Section("When do you want to wake up?") {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                }
                Section("Desired amount of sleep") {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }
                Section("Daily coffee intake") {
                    Picker("^[\(coffeeAmount) cup](inflect: true)", selection: $coffeeAmount) {
                        ForEach(1...20, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section("Output") {
                    if let bedTime = idealBedtime() {
                        Text("Your ideal bedtime is \(bedTime.formatted(date: .omitted, time: .shortened))")
                    } else {
                        Text("Error calculating ideal bedtime!!")
                    }
                }
            }
            .navigationTitle("BetterRest")
        }
    }

    func idealBedtime() -> Date? {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hourInSeconds = (components.hour ?? 0) * 60 * 60
            let minuteInSeconds = (components.minute ?? 0) * 60

            let prediction = try model.prediction(wake: Double((hourInSeconds + minuteInSeconds)), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep

            return sleepTime
        } catch {
            return nil
        }
    }
}

#Preview {
    Day28_BetterRestSectionView()
}
