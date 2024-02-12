//
//  Day39_LazyStackView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-11.
//

import SwiftUI

// CustomText is created just to test the lazy instantiation of the Text on scroll
private struct CustomText: View {
    let text: String

    var body: Text {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct Day39_LazyStackView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(1 ... 100, id: \.self) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    Day39_LazyStackView()
}
