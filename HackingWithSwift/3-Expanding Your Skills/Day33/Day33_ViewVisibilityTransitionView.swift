//
//  Day33_ViewVisibilityTransitionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-24.
//

import SwiftUI

struct Day33_ViewVisibilityTransitionView: View {
    @State private var isShowingRed: Bool = false

    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)

                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    Day33_ViewVisibilityTransitionView()
}
