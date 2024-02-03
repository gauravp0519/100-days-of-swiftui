//
//  Day32_ImplicitAnimationsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day32_ImplicitAnimationsView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    Day32_ImplicitAnimationsView()
}
