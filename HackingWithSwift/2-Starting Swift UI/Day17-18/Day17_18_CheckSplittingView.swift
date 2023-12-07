//
//  Day17_18_CheckSplittingView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day17_18_CheckSplittingView: View {
    private let minNoOfPeople = 2
    private let maxNoOfPeople = 50
    @State private var checkAmount = 100.0
    @State private var noOfPeopleIndex = 0
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool

    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(noOfPeopleIndex + minNoOfPeople)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var body: some View {
        Form {
            Section(header: Text("Bill amount")) {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
            }
            
            Section {
                Picker("Number of people", selection: $noOfPeopleIndex) {
                    ForEach(minNoOfPeople..<maxNoOfPeople, id: \.self) {
                        Text("\($0) people")
                    }
                }
                .pickerStyle(.navigationLink)
                
                Picker("Tip percentage", selection: $tipPercentage) {
                    ForEach(tipPercentages, id: \.self) {
                        Text($0, format: .percent)
                    }
                }
            }
            
            Section(header: Text("Total per person")) {
                Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                if amountIsFocused {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct Day17_18_CheckSplittingView_Previews: PreviewProvider {
    static var previews: some View {
        Day17_18_CheckSplittingView()
    }
}
