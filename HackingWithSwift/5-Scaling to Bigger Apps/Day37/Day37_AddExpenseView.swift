//
//  Day37_AddExpenseView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-07.
//

import SwiftUI

struct Day37_AddExpenseView: View {
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0

    var expenses: Expenses

    let types = ["Business", "Personal"]

    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)

                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)

                TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    self.expenses.items.append(item)
                    self.dismiss()
                }
            }
            .navigationTitle("Add new expense")
        }
    }
}

#Preview {
    Day37_AddExpenseView(expenses: .init())
}
