//
//  Day33_AnimatingGesturesRectView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-24.
//

import SwiftUI

struct Day33_AnimatingGesturesRectView: View {
    @State private var dragAmount = CGSize.zero

    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {
                        dragAmount = $0.translation
                    }
                    .onEnded { _ in
                        dragAmount = .zero
                    }
            )
            .animation(.bouncy, value: dragAmount)
    }
}

#Preview {
    Day33_AnimatingGesturesRectView()
}
