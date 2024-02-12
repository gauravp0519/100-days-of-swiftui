//
//  Day39_ScrollViewWithFullScreenDataView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-11.
//

import SwiftUI

struct Day39_ScrollViewWithFullScreenDataView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(1 ... 100, id: \.self) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    Day39_ScrollViewWithFullScreenDataView()
}
