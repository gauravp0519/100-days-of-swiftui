//
//  Day39_NavigationLinkView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-11.
//

import SwiftUI

struct Day39_NavigationLinkView: View {
    var body: some View {
        NavigationLink("Tap Me") {
            Text("Details View")
        }
        .navigationTitle("SwiftUI")
    }
}

#Preview {
    NavigationStack {
        Day39_NavigationLinkView()
    }
}
