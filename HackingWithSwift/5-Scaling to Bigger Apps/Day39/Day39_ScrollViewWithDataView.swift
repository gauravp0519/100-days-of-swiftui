//
//  Day39_ScrollViewWithDataView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-10.
//

import SwiftUI

struct Day39_ScrollViewWithDataView: View {
    var body: some View {
        // Note: VStack won't be taking the full screen width, thereby the scroll indicator will be very close to the texts
        ScrollView {
            VStack(spacing: 10) {
                ForEach(1 ... 100, id: \.self) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    Day39_ScrollViewWithDataView()
}
