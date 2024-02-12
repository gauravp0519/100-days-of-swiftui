//
//  Day39_FlexibleItemVGridView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-12.
//

import SwiftUI

struct Day39_FlexibleItemVGridView: View {
    let layout = [
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50)),
        GridItem(.flexible(minimum: 50)),
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
    Day39_FlexibleItemVGridView()
}
