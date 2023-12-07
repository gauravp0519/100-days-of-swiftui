//
//  Day19_TimeConversionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day19_TimeConversionView: View {
    @State private var inputValue: Double? = 0
    @State private var selectedInputUnit = UnitDuration.seconds
    @State private var selectedOutputUnit = UnitDuration.seconds
    private let units: [UnitDuration] = [.picoseconds, .nanoseconds, .microseconds, .milliseconds, .seconds, .minutes, .hours]
    private var output: Double {
        let input = Measurement(value: inputValue ?? 0, unit: selectedInputUnit)
        let output = input.converted(to: selectedOutputUnit)
        return output.value
    }
    
    var body: some View {
        Form {
            Section(header: Text("Input time duration unit")) {
                Picker("Input", selection: $selectedInputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0.nameFull)
                    }
                }
            }
            .pickerStyle(.navigationLink)
            
            Section(header: Text("Time duration in \(selectedInputUnit.nameMedium)")) {
                TextField("Enter Temperature", value: $inputValue, format: .number)
                    .keyboardType(.decimalPad)
            }
            
            Section(header: Text("Output time duration unit")) {
                Picker("Output", selection: $selectedOutputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0.nameFull)
                    }
                }
            }
            .pickerStyle(.navigationLink)
            
            Section(header: Text("Output")) {
                Text(String(format: "%g %@", output, selectedOutputUnit.nameMedium))
            }
        }
        .onChange(of: inputValue) {
            if $0?.isNaN ?? false {
                inputValue = nil
            }
        }
    }
}

struct Day19_TimeConversionView_Previews: PreviewProvider {
    static var previews: some View {
        Day19_TimeConversionView()
    }
}
