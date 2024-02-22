//
//  LightBackgroundDividerView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct LightBackgroundDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    LightBackgroundDividerView()
}
