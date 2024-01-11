//
//  Day19_TemperatureConversionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day19_TemperatureConversionView: View {
    @State private var inputValue: Double? = 0
    @State private var selectedInputUnit = UnitTemperature.celsius
    @State private var selectedOutputUnit = UnitTemperature.celsius
    private let units: [UnitTemperature] = [.celsius, .fahrenheit, .kelvin]
    private var output: Double {
        let input = Measurement(value: inputValue ?? 0, unit: selectedInputUnit)
        let output = input.converted(to: selectedOutputUnit)
        return output.value
    }

    var body: some View {
        Form {
            Section(header: Text("Input temperature unit")) {
                Picker("Input", selection: $selectedInputUnit) {
                    ForEach(units, id: \.self) {
                        Text("\($0.symbol)")
                    }
                }
                .pickerStyle(.segmented)
            }

            Section(header: Text("Temperature in \(selectedInputUnit.symbol)")) {
                TextField("Enter Temperature", value: $inputValue, format: .number)
                    .keyboardType(.decimalPad)
            }

            Section(header: Text("Output temperature unit")) {
                Picker("Output", selection: $selectedOutputUnit) {
                    ForEach(units, id: \.self) {
                        Text("\($0.symbol)")
                    }
                }
                .pickerStyle(.segmented)
            }

            Section(header: Text("Output")) {
                Text(String(format: "%g %@", output, selectedOutputUnit.symbol))
            }
        }
        .onChange(of: inputValue) {
            if $0?.isNaN ?? false {
                inputValue = nil
            }
        }
    }
}

#Preview {
    Day19_TemperatureConversionView()
}
