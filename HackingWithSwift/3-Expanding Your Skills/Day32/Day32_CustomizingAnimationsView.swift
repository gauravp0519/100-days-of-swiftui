//
//  Day32_CustomizingAnimationsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day32_CustomizingAnimationsView: View {
    @State private var animationAmount1 = 1.0
    @State private var animationAmount2 = 1.0
    @State private var animationAmount3 = 1.0
    @State private var animationAmount4 = 1.0
    @State private var animationAmount5 = 1.0

    var body: some View {
        Button("Tap Me") {
            animationAmount1 += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount1)
        .blur(radius: (animationAmount1 - 1) * 3)
        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount1)

        Spacer()

        Button("Tap Me") {
            animationAmount2 += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount2)
        .blur(radius: (animationAmount2 - 1) * 3)
        .animation(.easeInOut(duration: 2).delay(1), value: animationAmount2)

        Spacer()

        Button("Tap Me") {
            animationAmount3 += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount3)
        .blur(radius: (animationAmount3 - 1) * 3)
        .animation(.easeInOut(duration: 2).delay(1).repeatCount(2, autoreverses: true), value: animationAmount3)

        Spacer()

        Button("Tap Me") {
            animationAmount4 += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount4)
        .blur(radius: (animationAmount4 - 1) * 3)
        .animation(.easeInOut(duration: 2).delay(1).repeatForever(), value: animationAmount4)

        Spacer()

        Button("Tap Me") {
            //
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount5)
                .opacity(2 - animationAmount5)
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount5)
        )
        .onAppear {
            animationAmount5 = 2
        }
    }
}

#Preview {
    Day32_CustomizingAnimationsView()
}
