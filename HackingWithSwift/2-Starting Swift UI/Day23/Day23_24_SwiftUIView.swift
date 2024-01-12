//
//  Day23_24_SwiftUIView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-28.
//

import SwiftUI

struct Day23_24_SwiftUIView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("When you’re just starting out with SwiftUI, you get this code:")
                CodeView("""
                struct ContentView: View {
                 var body: some View {
                  VStack {
                   Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                   Text("Hello, world!")
                  }
                  .padding()
                 }
                }
                """)
                Spacer()
                Spacer()
                Text("It’s common to then modify that **`\(Text("VStack").coloredText(.red))`** with a background color and expect it to fill the screen:")
                CodeView("""
                struct ContentView: View {
                 var body: some View {
                  VStack {
                   Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                   Text("Hello, world!")
                  }
                  .padding()
                  .background(.red)
                 }
                }
                """)
                Spacer()
                Spacer()
                Spacer()
                Text("""
                However, that doesn’t happen. Instead, we get a small red view in the center of the screen, and a sea of white beyond it.

                **For SwiftUI developers, there is nothing behind our view**

                Now, right now at least there is something behind our content view called a **`\(Text("UIHostingController").coloredText(.red))`**: it is the bridge between UIKit (Apple’s original iOS UI framework) and SwiftUI.

                The correct solution is to make the **`\(Text("VStack").coloredText(.red))`** take up more space; to allow it to fill the screen rather than being sized precisely around its content. We can do that by using the **`\(Text("frame()").coloredText(.red))`** modifier, passing in **`\(Text(".infinity").coloredText(.red))`** for both its maximum width and maximum height.

                So, replace the **`\(Text("padding()").coloredText(.red))`** modifier with this:
                """)
                CodeView("""
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                """)
                Spacer()
                Spacer()
                Spacer()
                Text("**Final solution**")
                CodeView("""
                struct ContentView: View {
                 var body: some View {
                  VStack {
                   Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                   Text("Hello, world!")
                  }
                  .frame(maxWidth: .infinity, maxHeight: .infinity)
                  .background(.red)
                 }
                }
                """)
            }
        }
        .padding()
    }
}

#Preview {
    Day23_24_SwiftUIView()
}
