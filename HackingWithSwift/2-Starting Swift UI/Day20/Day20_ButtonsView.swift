//
//  Day20_ButtonsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_ButtonsView: View {
    var body: some View {
        VStack(spacing: 10) {
            Button("Button - automatic", role: .destructive) {}
                .buttonStyle(.automatic)
            Button("Button - bordered") {}
                .buttonStyle(.bordered)
            Button("Button - borderedProminent") {}
                .buttonStyle(.borderedProminent)
            Button("Button - borderless") {}
                .buttonStyle(.borderless)
            Button("Button - plain") {}
                .buttonStyle(.plain)

            Divider()
                .background(.primary)

            Button("Button - custom tint") {}
                .tint(.mint)

            Divider()
                .background(.primary)

            Button("Tap me") {
                print("Tapped!")
            }

            Button("Tap execute function", action: self.buttonTapped)
        }
    }

    private func buttonTapped() {
        print("Tapped!")
    }
}

#Preview {
    Day20_ButtonsView()
}
