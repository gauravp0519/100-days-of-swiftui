//
//  Day44_NavigationPathView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day44_NavigationPathView: View {
    // NavigationPath is Type Erasure
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) {
                    NavigationLink("Select Number \($0)", value: $0)
                }

                ForEach(0..<5) {
                    NavigationLink("Select String \($0)", value: String($0))
                }
            }
            .toolbar {
                Button("Push 556") {
                    path.append(556)
                }
                Button("Push Hello") {
                    path.append("Hello")
                }
            }
            .navigationDestination(for: Int.self) {
                Text("You selected number: \($0)")
            }
            .navigationDestination(for: String.self) {
                Text("You selected string: \($0)")
            }
        }
    }
}

#Preview {
    Day44_NavigationPathView()
}
