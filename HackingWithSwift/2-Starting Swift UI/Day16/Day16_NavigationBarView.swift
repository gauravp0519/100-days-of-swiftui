//
//  Day16_NavigationBarView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_NavigationBarView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle("Navigation Bar")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Day16_NavigationBarView()
}
