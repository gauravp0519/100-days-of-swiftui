//
//  Day29_DynamicContentListView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI

struct Day29_DynamicContentListView: View {
    private let people = ["Finn", "Leia", "Luke", "Rey"]

    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
}

#Preview {
    Day29_DynamicContentListView()
}
