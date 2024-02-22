//
//  Day42_MissionsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct Day42_MissionsView: View {
    @State private var isGridView: Bool = true
    private let missions: [Mission] = Bundle.main.decode("missions.json")

    var body: some View {
        NavigationStack {
            VStack {
                if isGridView {
                    MissionsGridLayoutView()
                } else {
                    MissionsListLayoutView()
                }
            }
            .navigationTitle("Moonlight")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                let imageName = isGridView ? "list.bullet" : "square.grid.2x2"
                Button("Toggle View", systemImage: imageName) {
                    isGridView.toggle()
                }
            }
        }
    }
}

#Preview {
    Day42_MissionsView()
}
