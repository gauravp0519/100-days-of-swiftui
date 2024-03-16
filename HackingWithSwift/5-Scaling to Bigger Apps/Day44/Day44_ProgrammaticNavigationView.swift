//
//  Day44_ProgrammaticNavigationView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day44_ProgrammaticNavigationView: View {
    @State private var appNavigation = AppNavigation.shared

    var body: some View {
        NavigationStack(path: $appNavigation.path) {
            VStack {
                Button("Show 32") {
                    appNavigation.path = NavigationPath([32]) // Root -> "You selected 32"
                }
                Button("Show 64") {
                    appNavigation.path.append(64) // Top View -> push -> "You selected 64"
                }
                Button("Show 32 then 64") {
                    appNavigation.path = NavigationPath([32, 64]) // Root -> "You selected 32" -> "You selected 64"
                }
            }
            .navigationDestination(for: ItemModel.self) {
                $0.view
            }
            .navigationDestination(for: Int.self) {
                Text("You selected \($0)")
            }
        }
    }
}

#Preview {
    Day44_ProgrammaticNavigationView()
}
