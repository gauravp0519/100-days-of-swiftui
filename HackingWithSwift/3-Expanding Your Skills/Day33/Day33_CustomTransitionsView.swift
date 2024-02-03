//
//  Day33_CustomTransitionsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-01.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    let clipped: Bool

    func body(content: Content) -> some View {
        let modifiedContent = content
            .rotationEffect(.degrees(amount), anchor: anchor)
        if clipped {
            return AnyView(modifiedContent.clipped())
        } else {
            return AnyView(modifiedContent)
        }
    }
}

extension AnyTransition {
    static var pivotClipped: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading, clipped: true),
                  identity: CornerRotateModifier(amount: 0, anchor: .topLeading, clipped: true))
    }

    static var pivotUnclipped: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading, clipped: false),
                  identity: CornerRotateModifier(amount: 0, anchor: .topLeading, clipped: false))
    }
}

struct Day33_CustomTransitionsView: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            // Unclipped: Red rectangle won't be clipped within the bounds
            ZStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)

                if isShowingRed {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 200, height: 200)
                        .transition(.pivotUnclipped)
                }
            }

            // Clipped: Red rectangle will be clipped within the bounds
            ZStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)

                if isShowingRed {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 200, height: 200)
                        .transition(.pivotClipped)
                }
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    Day33_CustomTransitionsView()
}
