//
//  Day23_24_ConditionalModifiersView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-28.
//

import SwiftUI

struct Day23_24_ConditionalModifiersView: View {
    @State private var useRedText: Bool = false
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Button("Tap to change color") {
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red : .blue)
            Spacer()
            Text("Code snippet:")
            CodeView("""
            Button("Tap to change color") {
              useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red : .blue)
            """)
            Spacer()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Day23_24_ConditionalModifiersView()
}
