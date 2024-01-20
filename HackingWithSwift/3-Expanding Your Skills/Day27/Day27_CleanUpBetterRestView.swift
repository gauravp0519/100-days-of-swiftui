//
//  Day27_CleanUpBetterRestView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-19.
//

import SwiftUI
import CoreML

struct Day27_CleanUpBetterRestView: View {
    @State private var wakeUp: Date = {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }()
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""
    @State private var showingAlert = false

    var body: some View {
        NavigationStack {
            Form {
                VStack(alignment: .leading, spacing: 0) {
                    Text("When do you want to wake up?")
                        .font(.headline)

                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }

                VStack(alignment: .leading, spacing: 0) {
                    Text("Desired amount of sleep")
                        .font(.headline)

                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }

                VStack(alignment: .leading, spacing: 0) {
                    Text("Daily coffee intake")
                        .font(.headline)

                    Stepper("^[\(coffeeAmount) cup](inflect: true)", value: $coffeeAmount, in: 1...20)
                }
            }
            .alert(alertTitle, isPresented: $showingAlert, actions: {
                Button("OK") { }
            }, message: {
                Text(alertMessage)
            })
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }

    func calculateBedtime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hourInSeconds = (components.hour ?? 0) * 60 * 60
            let minuteInSeconds = (components.minute ?? 0) * 60

            let prediction = try model.prediction(wake: Double((hourInSeconds + minuteInSeconds)), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep

            alertTitle = "Your ideal bedtime is…"
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }

        showingAlert = true
    }
}

#Preview {
    Day27_CleanUpBetterRestView()
}
