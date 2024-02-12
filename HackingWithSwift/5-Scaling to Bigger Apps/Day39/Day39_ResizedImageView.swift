//
//  Day39_ResizedImageView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-10.
//

import SwiftUI

struct Day39_ResizedImageView: View {
    var body: some View {
        Image(.changiAirport)
            .resizable()
            .frame(width: 300, height: 600)
    }
}

#Preview {
    Day39_ResizedImageView()
}
