//
//  Day20_AngularGradientView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_AngularGradientView: View {
    var body: some View {
        AngularGradient(colors: [
            .orange, .red, .blue, .green, .yellow, .orange,
        ], center: .center)
    }
}

#Preview {
    Day20_AngularGradientView()
}
