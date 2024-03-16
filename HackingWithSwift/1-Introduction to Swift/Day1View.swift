//
//  Day1View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-01.
//

import SwiftUI

struct Day1View: View {
    private let codeSnippet = """
    let number = 0.1 + 0.2
    print(number)
    """

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("*The storage method causes `Double` numbers to be notoriously problematic for programmers, and you can get a taste of this with just two lines of Swift code:*")

            CodeView(self.codeSnippet)

            OutputView("0.30000000000000004")

            Divider()
                .background(.primary)

            Text("*The reason `Double` precision is complex is because computers are **trying to use binary to store complicated numbers**. For example, if you divide 1 by 3 we know you get 1/3, but that can’t be stored in binary so the system is designed to create very close approximations. It’s extremely efficient, and the error is so small it’s usually irrelevant!*")
                .italic()

            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Double precision issue")
    }
}

#Preview {
    Day1View()
}
