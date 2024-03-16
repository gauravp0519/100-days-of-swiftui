//
//  Day36_DeletingItemsFromListView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

struct Day36_DeletingItemsFromListView: View {
    @State private var numbers: [Int] = []
    @State private var currentNumber: Int = 1

    var body: some View {
        List {
            ForEach(numbers, id: \.self) {
                Text("Row \($0)")
            }
            .onDelete(perform: deleteItems)
        }
        Button("Add item") {
            numbers.append(currentNumber)
            currentNumber += 1
        }
        .toolbar(content: {
            EditButton()
        })
    }

    private func deleteItems(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    NavigationStack {
        Day36_DeletingItemsFromListView()
    }
}
