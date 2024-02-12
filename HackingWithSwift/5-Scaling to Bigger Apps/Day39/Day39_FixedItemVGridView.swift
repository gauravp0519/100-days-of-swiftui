//
//  Day39_FixedItemVGridView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-12.
//

import SwiftUI

struct Day39_FixedItemVGridView: View {
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(1 ... 100, id: \.self) { row in
                    let column = row % 4 == 0 ? 4 : row % 4
                    Text("Row \(row) Col \(column)")
                        .background(.gray.opacity(0.5))
                }
            }
        }
    }
}

#Preview {
    Day39_FixedItemVGridView()
}
