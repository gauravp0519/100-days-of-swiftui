//
//  Day32_AnimatingBindingsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day32_AnimatingBindingsView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale amount: \(animationAmount.formatted())", value: $animationAmount.animation(
                .easeInOut(duration: 1.0)
                    .repeatCount(3, autoreverses: true)
            ), in: 1 ... 10)
            Spacer()
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
        .frame(width: 250)
        .padding()
    }
}

#Preview {
    Day32_AnimatingBindingsView()
}
