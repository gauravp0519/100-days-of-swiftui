//
//  Day33_AnimatingGesturesLettersView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-24.
//

import SwiftUI

struct Day33_AnimatingGesturesLettersView: View {
    @State private var enabled: Bool = false
    @State private var dragAmount = CGSize.zero
    private let letters = Array("Hello SwiftUI")

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0 ..< letters.count, id: \.self) {
                Text(String(letters[$0]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double($0) / 20.0), value: dragAmount)
                    .gesture(
                        DragGesture()
                            .onChanged {
                                enabled = true
                                dragAmount = $0.translation
                            }
                            .onEnded { _ in
                                enabled = false
                                dragAmount = .zero
                            }
                    )
            }
        }
    }
}

#Preview {
    Day33_AnimatingGesturesLettersView()
}
