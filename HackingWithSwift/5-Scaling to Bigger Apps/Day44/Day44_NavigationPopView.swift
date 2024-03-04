//
//  Day44_NavigationPopView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

fileprivate struct DetailView: View {
    let number: Int
    /*
     The @Binding property wrapper lets us pass an @State property into another view and modify it from there – we can share an @State property in several places, and changing it in one place will change it everywhere.
     */
    @Binding var path: NavigationPath

    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...10))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct Day44_NavigationPopView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            DetailView(number: 0, path: $path)
                .navigationDestination(for: Int.self) {
                    DetailView(number: $0, path: $path)
                }
        }
    }
}

#Preview {
    Day44_NavigationPopView()
}
