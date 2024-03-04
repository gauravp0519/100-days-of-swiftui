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
        NavigationStack {
            Text("Hello World!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Day45_EditableNavigationTitleView()
}
