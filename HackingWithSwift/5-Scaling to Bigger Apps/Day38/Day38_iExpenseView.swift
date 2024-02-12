//
//  Day38_iExpenseView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-08.
//

import SwiftUI

private struct CurrencyText: ViewModifier {
    let amount: Double

    func body(content: Content) -> some View {
        content
            .font(
                amount >= 100 ? .headline : .subheadline
            )
            .foregroundStyle(
                amount >= 10 ? .primary : .secondary
            )
    }
}

private extension Text {
    func currencyStyle(amount: Double) -> some View {
        modifier(CurrencyText(amount: amount))
    }
}

struct Day38_iExpenseView: View {
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                                .font(.subheadline)
                        }
                        Spacer()
                        Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .currencyStyle(amount: item.amount)
                    }
                }
                .onDelete(perform: removeItems)
            }
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpense.toggle()
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                Day37_AddExpenseView(expenses: expenses)
            }
            .navigationTitle("iExpense")
        }
    }

    private func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    Day38_iExpenseView()
}
