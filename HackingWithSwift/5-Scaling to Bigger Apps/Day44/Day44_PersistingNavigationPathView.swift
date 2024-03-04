//
//  Day44_PersistingNavigationPathView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

@Observable
fileprivate class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }

    private let savePath = URL.documentsDirectory.appending(path: "NavigationSavedPath")

    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        path = NavigationPath()
    }

    private func save() {
        guard let representation = path.codable else { return }
        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save Navigation path")
        }
    }
}

fileprivate struct DetailView: View {
    let number: Int

    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...10))
            .navigationTitle("Number: \(number)")
    }
}

struct Day44_PersistingNavigationPathView: View {
    @State private var pathStore = PathStore()

    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) {
                    DetailView(number: $0)
                }
        }
    }
}

#Preview {
    Day44_PersistingNavigationPathView()
}
