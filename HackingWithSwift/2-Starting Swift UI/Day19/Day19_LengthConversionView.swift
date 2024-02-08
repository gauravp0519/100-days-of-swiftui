//
//  Day19_LengthConversionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day19_LengthConversionView: View {
    @State private var inputValue: Double? = 0
    @State private var selectedInputUnit = UnitLength.meters
    @State private var selectedOutputUnit = UnitLength.meters
    private let units: [UnitLength] = [.megameters, .kilometers, .hectometers, .decameters, .meters, .decimeters, .centimeters, .millimeters, .micrometers, .nanometers, .picometers, .inches, .feet, .yards, .miles, .scandinavianMiles, .lightyears, .nauticalMiles, .fathoms, .furlongs, .astronomicalUnits, .parsecs]
    private var output: Double {
        let input = Measurement(value: inputValue ?? 0, unit: selectedInputUnit)
        let output = input.converted(to: selectedOutputUnit)
        return output.value
    }

    var body: some View {
        Form {
            Section(header: Text("Input length unit")) {
                Picker("Input", selection: $selectedInputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0.nameFull)
                    }
                }
            }
            .pickerStyle(.navigationLink)

            Section(header: Text("Length in \(selectedInputUnit.nameMedium)")) {
                TextField("Enter Temperature", value: $inputValue, format: .number)
                    .keyboardType(.decimalPad)
            }

            Section(header: Text("Output length unit")) {
                Picker("Output", selection: $selectedOutputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0.nameFull)
                    }
                }
            }
            .pickerStyle(.navigationLink)

            Section(header: Text("Output")) {
                Text(String(format: "%g %@", output, selectedOutputUnit.symbol))
            }
        }
        .onChange(of: inputValue) { _, newValue in
            if newValue?.isNaN ?? false {
                inputValue = nil
            }
        }
    }
}

#Preview {
    Day19_LengthConversionView()
}
