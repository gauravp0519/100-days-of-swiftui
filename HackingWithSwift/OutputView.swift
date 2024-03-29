//
//  OutputView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-01.
//

import SwiftUI

struct OutputView: View {
    private let outputString: String

    init(_ outputString: String) {
        self.outputString = outputString
    }

    var body: some View {
        HStack {
            Text("Output:")

            Text(self.outputString)
                .bold()
        }
    }
}

#Preview {
    OutputView("Hello world!")
}
