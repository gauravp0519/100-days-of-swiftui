//
//  Day45_EditableNavigationTitleView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day45_EditableNavigationTitleView: View {
    @State private var title: String = "My Title"

    var body: some View {
        Text("Hello World!")
            .navigationTitle($title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        Day45_EditableNavigationTitleView()
    }
}
