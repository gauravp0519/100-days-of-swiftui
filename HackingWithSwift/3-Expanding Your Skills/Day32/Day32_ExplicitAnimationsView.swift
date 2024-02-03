//
//  Day32_ExplicitAnimationsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day32_ExplicitAnimationsView: View {
    @State private var animationAmount = 0.0

    var body: some View {
        Button("Tap me - x") {
            withAnimation(.spring(duration: 1.0, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1.0, y: 0.0, z: 0.0)
        )

        Button("Tap me - y") {
            withAnimation(.spring(duration: 1.0, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
        )

        Button("Tap me - z") {
            withAnimation(.spring(duration: 1.0, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0.0, y: 0.0, z: 1.0)
        )

        Button("Tap me - x, y") {
            withAnimation(.spring(duration: 1.0, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1.0, y: 1.0, z: 0.0)
        )

        Button("Tap me - x, y, z") {
            withAnimation(.spring(duration: 1.0, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1.0, y: 1.0, z: 1.0)
        )
    }
}

#Preview {
    Day32_ExplicitAnimationsView()
}
