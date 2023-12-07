//
//  Day17_18_HidingKeyboardView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day17_18_HidingKeyboardView: View {
    @State private var amount = 0.0
    @FocusState private var amountIsFocused: Bool
    
    var body: some View {
        Form {
            TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                .keyboardType(.decimalPad)
                .focused($amountIsFocused)
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                if amountIsFocused {
                    Button("Done") {
                        self.amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct Day17_18_HidingKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        Day17_18_HidingKeyboardView()
    }
}
