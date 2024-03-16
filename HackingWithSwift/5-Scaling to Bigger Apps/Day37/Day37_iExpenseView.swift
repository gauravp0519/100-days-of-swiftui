//
//  Day37_iExpenseView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-07.
//

import SwiftUI

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.setValue(encoded, forKey: "Expenses")
            }
        }
    }

    init() {
        if let savedExpenses = UserDefaults.standard.data(forKey: "Expenses"), let items = try? JSONDecoder().decode([ExpenseItem].self, from: savedExpenses) {
            self.items = items
        }
    }
}

struct Day37_iExpenseView: View {
    @State private var expenses = Expenses()
    @State private var showingAddExpense = false

    var body: some View {
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
                        .font(.subheadline)
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

    private func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    NavigationStack {
        Day37_iExpenseView()
    }
}
