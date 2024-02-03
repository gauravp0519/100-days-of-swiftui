//
//  Day27_BasicLayoutView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-19.
//

import SwiftUI

struct Day27_BasicLayoutView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1

    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)

                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()

                Text("Desired amount of sleep")
                    .font(.headline)

                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4 ... 12, step: 0.25)

                Text("Daily coffee intake")
                    .font(.headline)

                Stepper("^[\(coffeeAmount) cup](inflect: true)", value: $coffeeAmount, in: 1 ... 20)
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }

    func calculateBedtime() {}
}

#Preview {
    Day27_BasicLayoutView()
}
