//
//  Day16_LoopView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_LoopView: View {
    var body: some View {
        Form {
            ForEach(0 ..< 100) {
                Text("Row \($0)")
            }
        }
    }
}

#Preview {
    Day16_LoopView()
}
