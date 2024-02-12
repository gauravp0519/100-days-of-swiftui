//
//  Day39_ImageClippedView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-10.
//

import SwiftUI

struct Day39_ImageClippedView: View {
    var body: some View {
        Image(.changiAirport)
            .frame(width: 300, height: 600)
            .clipped()
    }
}

#Preview {
    Day39_ImageClippedView()
}
