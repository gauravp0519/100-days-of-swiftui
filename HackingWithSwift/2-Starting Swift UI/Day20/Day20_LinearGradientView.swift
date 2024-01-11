//
//  Day20_LinearGradientView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_LinearGradientView: View {
    var body: some View {
        VStack(spacing: 0) {
            LinearGradient(colors: [.red, .blue],
                           startPoint: .top,
                           endPoint: .bottom)
            LinearGradient(stops: [
                .init(color: .orange, location: 0.45),
                .init(color: .green, location: 0.55),
            ], startPoint: .top, endPoint: .bottom)
        }
    }
}

#Preview {
    Day20_LinearGradientView()
}
