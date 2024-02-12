//
//  Day39_AdaptiveItemVGridView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-12.
//

import SwiftUI

struct Day39_AdaptiveItemVGridView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80)),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(1 ... 100, id: \.self) { row in
                    Text("Row \(row)")
                        .background(.gray.opacity(0.5))
                }
            }
        }
    }
}

#Preview {
    Day39_AdaptiveItemVGridView()
}
