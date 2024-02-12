//
//  Day39_ScaledToFitImageView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-10.
//

import SwiftUI

struct Day39_ScaledToFitImageView: View {
    var body: some View {
        Image(.changiAirport)
            .resizable()
            .scaledToFit()
            .frame(width: 320, height: 500)
    }
}

#Preview {
    Day39_ScaledToFitImageView()
}
