//
//  Day23_24_EnvModifiersView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-28.
//

import SwiftUI

struct Day23_24_EnvModifiersView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("""
                **Environment modifiers** - Behave subtly differently because if any of those child views override the same modifier, the child’s version takes priority.
                """)
                CodeView("""
                VStack {
                  Text("Gryffindor")
                    .font(.largeTitle)
                  Text("Hufflepuff")
                  Text("Ravenclaw")
                  Text("Slytherin")
                }
                .font(.title)
                """)
                Text("**`\(Text("font()").coloredText(.red))`** is an environment modifier, which means the Gryffindor text view can override it with a custom font.")
                Spacer()
                Spacer()
                Spacer()
                Text("""
                **Regular modifiers** - None of the child views can override the parent modifier.
                """)
                CodeView("""
                VStack {
                  Text("Gryffindor")
                    .blur(radius: 0)
                  Text("Hufflepuff")
                  Text("Ravenclaw")
                  Text("Slytherin")
                }
                .blur(radius: 5)
                """)
                Text("**`\(Text("blur()").coloredText(.red))`** is a regular modifier, so any blurs applied to child views are added to the **`\(Text("VStack").coloredText(.red))`** blur rather than replacing it.")
            }
        }
        .padding()
    }
}

#Preview {
    Day23_24_EnvModifiersView()
}
