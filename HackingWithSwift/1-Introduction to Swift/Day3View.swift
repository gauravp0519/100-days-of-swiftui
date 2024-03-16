//
//  Day3View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-01.
//

import SwiftUI

struct Day3View: View {
    private let codeSnippet = """
    let results = [
      "english": 100,
      "french": 85,
      "geography": 75,
    ]

    let historyResult = results["history", default: 0]

    print(historyResult)
    """

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("*How to use default values in Dictionaries*")

            CodeView(self.codeSnippet)

            OutputView("0")

            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Dictionary default value")
    }
}

#Preview {
    Day3View()
}
