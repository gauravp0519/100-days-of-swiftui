//
//  Day39_NavigationLinkWithListView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-11.
//

import SwiftUI

struct Day39_NavigationLinkWithListView: View {
    var body: some View {
        NavigationStack {
            List(1 ... 100, id: \.self) { row in
                NavigationLink("Item \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    Day39_NavigationLinkWithListView()
}
