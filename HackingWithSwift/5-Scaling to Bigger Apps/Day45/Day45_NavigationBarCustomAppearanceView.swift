//
//  Day45_NavigationBarCustomAppearanceView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

// Scroll list up/down to test
struct Day45_NavigationBarCustomAppearanceView: View {
    var body: some View {
        List(0 ..< 5) {
            Text("Row \($0)")
        }
        .navigationTitle("My title")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.blue, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        Day45_NavigationBarCustomAppearanceView()
    }
}
