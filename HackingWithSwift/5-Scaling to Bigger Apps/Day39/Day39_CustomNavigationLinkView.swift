//
//  Day39_CustomNavigationLinkView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-11.
//

import SwiftUI

struct Day39_CustomNavigationLinkView: View {
    var body: some View {
        NavigationLink {
            Text("Details View")
        } label: {
            VStack {
                Text("This is the label")
                Text("Tap it")
                Image(systemName: "face.smiling")
            }
        }
        .navigationTitle("SwiftUI")
    }
}

#Preview {
    Day39_CustomNavigationLinkView()
}
