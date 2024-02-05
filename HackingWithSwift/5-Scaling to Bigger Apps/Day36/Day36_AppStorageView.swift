//
//  Day36_AppStorageView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

/*
 UserDefaults inside a nice and simple property wrapper called @AppStorage – it only supports a subset of functionality right now, but it can be really helpful.
 */
struct Day36_AppStorageView: View {
    @AppStorage("tapCount") private var tapCount = 0

    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    Day36_AppStorageView()
}
