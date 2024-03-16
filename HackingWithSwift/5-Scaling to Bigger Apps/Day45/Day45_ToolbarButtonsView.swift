//
//  Day45_ToolbarButtonsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

struct Day45_ToolbarButtonsView: View {
    var body: some View {
        Text("Hello world!")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Home") {}
                }

                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirm") {}
                }

                ToolbarItem(placement: .destructiveAction) {
                    Button("Destroy") {}
                }
            }
    }
}

#Preview {
    NavigationStack {
        Day45_ToolbarButtonsView()
    }
}
