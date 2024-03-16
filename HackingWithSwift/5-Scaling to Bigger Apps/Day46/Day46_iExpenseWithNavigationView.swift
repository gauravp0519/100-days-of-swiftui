//
//  Day46_iExpenseWithNavigationView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-10.
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

struct Day46_iExpenseWithNavigationView: View {
    @State private var expenses = Expenses()

    private enum Step: Hashable {
        case addExpense
    }

    @State private var appNavigation = AppNavigation.shared

    var body: some View {
        NavigationStack(path: $appNavigation.path) {
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
                    appNavigation.path.append(Step.addExpense)
                }
            }
            .navigationDestination(for: ItemModel.self) {
                $0.view
            }
            .navigationDestination(for: Step.self) { _ in
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
    Day46_iExpenseWithNavigationView()
}
