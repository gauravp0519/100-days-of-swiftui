//
//  CodeView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-01.
//

import SwiftUI

struct CodeView: View {
    private let codeString: String

    init(_ codeString: String) {
        self.codeString = codeString
    }

    var body: some View {
        Text("*`\(codeString)`*")
            .padding(6)
            .background(.quaternary)
            .border(.primary)
    }
}

#Preview {
    CodeView("// This is a test")
}
