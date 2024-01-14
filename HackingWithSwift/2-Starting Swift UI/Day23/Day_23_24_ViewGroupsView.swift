//
//  Day_23_24_ViewGroupsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-13.
//

import SwiftUI

struct Day_23_24_ViewGroupsView: View {
    // `@ViewBuilder` mimics the way `body` works
    @ViewBuilder var texts: some View {
        Text("Alpha")
        Text("Beta")
        Text("Gamma")
    }

    var body: some View {
        texts
    }
}

#Preview {
    Day_23_24_ViewGroupsView()
}
