//
//  Dat23_24_CustomContainersView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-13.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct Dat23_24_CustomContainersView: View {
    var body: some View {
        GridStack(rows: 3, columns: 3) { row, column in
            Image(systemName: "\(row * 4 + column).circle")
            Text("R\(row) C\(column)")
        }
    }
}

#Preview {
    Dat23_24_CustomContainersView()
}
