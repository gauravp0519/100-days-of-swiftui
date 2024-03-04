//
//  Day43_SimpleNavigationLinkView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

private struct DetailView: View {
    let number: Int

    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }

    var body: some View {
        Text("Detail View \(number)")
    }
}

/*
 When the list is displayed on screen, then all the DetailView get instantiated. By right it should be instantiated only when the user goes to the DetailView
 */
struct Day43_SimpleNavigationLinkView: View {
    var body: some View {
        NavigationStack {
            List(0 ..< 100) { i in
                NavigationLink("Tap Me") {
                    DetailView(number: i)
                }
            }
        }
    }
}

#Preview {
    Day43_SimpleNavigationLinkView()
}
