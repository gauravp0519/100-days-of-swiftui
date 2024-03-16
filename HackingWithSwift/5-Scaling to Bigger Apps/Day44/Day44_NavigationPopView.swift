//
//  Day44_NavigationPopView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

private struct DetailView: View {
    let number: Int
    /*
     The @Binding property wrapper lets us pass an @State property into another view and modify it from there – we can share an @State property in several places, and changing it in one place will change it everywhere.
     */
    @Binding var path: NavigationPath

    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1 ... 10))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct Day44_NavigationPopView: View {
    @State private var appNavigation = AppNavigation.shared

    var body: some View {
        NavigationStack(path: $appNavigation.path) {
            DetailView(number: 0, path: $appNavigation.path)
                .navigationDestination(for: ItemModel.self) {
                    $0.view
                }
                .navigationDestination(for: Int.self) {
                    DetailView(number: $0, path: $appNavigation.path)
                }
        }
    }
}

#Preview {
    Day44_NavigationPopView()
}
