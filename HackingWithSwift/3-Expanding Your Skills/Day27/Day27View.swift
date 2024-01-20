//
//  Day27View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-14.
//

import SwiftUI

struct Day27View: View {
    private let items: [ItemModel] = [
        .init(title: "Basic layout",
              description: "",
              view: AnyView(Day27_BasicLayoutView())),
        .init(title: "Connect CoreML",
              description: "",
              view: AnyView(Day27_ConnectCoreMLView())),
        .init(title: "Clean Up UI",
              description: "",
              view: AnyView(Day27_CleanUpBetterRestView())),
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(self.items) { item in
                    NavigationLink(destination: item.view) {
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            if !item.description.isEmpty {
                                Text(item.description)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Day 27")
    }
}

#Preview {
    Day27View()
}
