//
//  Day39_RelativeHeightImageView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-10.
//

import SwiftUI

struct Day39_RelativeHeightImageView: View {
    var body: some View {
        Image(.changiAirport)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, _ in
                size * 0.8 // 80% screen width
            }
    }
}

#Preview {
    Day39_RelativeHeightImageView()
}
