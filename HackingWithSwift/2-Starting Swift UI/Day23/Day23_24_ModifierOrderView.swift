//
//  Day23_24_ModifierOrderView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-28.
//

import SwiftUI

struct Day23_24_ModifierOrderView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("""
                Almost every time **we apply a modifier to a SwiftUI view, we actually create a new view with that change applied – we don’t just modify the existing view in place**. If you think about it, this behavior makes sense: our views only hold the exact properties we give them, **so if we set the background color or font size there is no place to store that data**.
                """)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("**Example 1** - creates a Button with **`\(Text("red").coloredText(.red))`** background color and then overall view frame of 200x200")
                CodeView("""
                Button("Hello, world!") {
                 // do nothing
                }
                .background(.red)
                .frame(width: 200, height: 200)
                """)
                Button("Hello, world!") {
                    // do nothing
                }
                .background(.red)
                .frame(width: 200, height: 200)

                Text("**Example 2** - creates a Button with overall view frame of 200x200, then colors all that frame with **`\(Text("red").coloredText(.red))`** color")
                CodeView("""
                Button("Hello, world!") {
                 // do nothing
                }
                .frame(width: 200, height: 200)
                .background(.red)
                """)
                Button("Hello, world!") {
                    print(type(of: self.body))
                }
                .frame(width: 200, height: 200)
                .background(.red)
            }
        }
        .padding()
    }
}

#Preview {
    Day23_24_ModifierOrderView()
}
