//
//  Day29_StaticAndDynamicContentListView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI

struct Day29_StaticAndDynamicContentListView: View {
    private let people = ["Finn", "Leia", "Luke", "Rey"]

    var body: some View {
        List {
            Text("Static content 1")
            Text("Static content 2")

            ForEach(people, id: \.self) {
                Text("Dynamic content - \($0)")
            }

            Text("Static content 3")
            Text("Static content 4")
        }
        .listStyle(.grouped)
    }
}

#Preview {
    Day29_StaticAndDynamicContentListView()
}
