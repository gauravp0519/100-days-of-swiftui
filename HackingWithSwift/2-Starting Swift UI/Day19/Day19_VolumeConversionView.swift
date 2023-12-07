//
//  Day19_VolumeConversionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day19_VolumeConversionView: View {
    @State private var inputValue: Double? = 0
    @State private var selectedInputUnit = UnitVolume.liters
    @State private var selectedOutputUnit = UnitVolume.liters
    private let units: [UnitVolume] = [.megaliters,  .kiloliters, .liters, .deciliters, .centiliters, .milliliters, .cubicKilometers, .cubicMeters, .cubicDecimeters, .cubicCentimeters, .cubicMillimeters, .cubicInches, .cubicFeet, .cubicYards, .cubicMiles, .acreFeet, .bushels, .teaspoons, .tablespoons, .fluidOunces, .cups, .pints, .quarts, .gallons, .imperialTeaspoons, .imperialTablespoons, .imperialFluidOunces, .imperialPints, .imperialQuarts, .imperialGallons, .metricCups]
    private var output: Double {
        let input = Measurement(value: inputValue ?? 0, unit: selectedInputUnit)
        let output = input.converted(to: selectedOutputUnit)
        return output.value
    }
    
    var body: some View {
        Form {
            Section(header: Text("Input volume unit")) {
                Picker("Input", selection: $selectedInputUnit) {
                    ForEach(units, id: \.self) {
                        Text($0.nameFull)
                    }
                }
            }
            .pickerStyle(.navigationLink)
            
            Section(header: Text("Volume in \(selectedInputUnit.nameMedium)")) {
                TextField("Enter Temperature", value: $inputValue, format: .number)
                    .keyboardType(.decimalPad)
            }
            
            Section(header: Text("Output volume unit")) {
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

struct Day19_VolumeConversionView_Previews: PreviewProvider {
    static var previews: some View {
        Day19_VolumeConversionView()
    }
}
