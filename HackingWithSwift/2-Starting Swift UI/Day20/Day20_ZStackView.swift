//
//  Day20_ZStackView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-03.
//

import SwiftUI

struct Day20_ZStackView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Text("This is first line\nThis is second line")
                .background(.red)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(.yellow)
        }
    }
}

#Preview {
    Day20_ZStackView()
}
