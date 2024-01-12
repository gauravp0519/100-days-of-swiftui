//
//  Day23_24_SomeViewTypeView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-10.
//

import SwiftUI

struct Day23_24_SomeViewTypeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("""
                SwiftUI relies very heavily on a Swift power feature called “opaque return types”, which you can see in action every time you write **`\(Text("some View").coloredText(.red))`**. This means “one object that conforms to the **`\(Text("View").coloredText(.red))`** protocol, but we don’t want to say what.”

                Returning **`\(Text("some View").coloredText(.red))`** means even though we don’t know what view type is going back, the compiler does.

                First, using **`\(Text("some View").coloredText(.red))`** is important for performance: SwiftUI needs to be able to look at the views we are showing and understand how they change, so it can correctly update the user interface.

                The second difference is important because of the way SwiftUI builds up its data using **`\(Text("ModifiedContent").coloredText(.red))`**.

                The **`\(Text("View").coloredText(.red))`** protocol has an associated type attached to it, which is Swift’s way of saying that View by itself doesn’t mean anything – we need to say exactly what kind of view it is.

                So, while it’s not allowed to write a view like this:
                """)
                CodeView("""
                struct ContentView: View {
                  var body: View {
                    Text("Hello, world!")
                  }
                }
                """)
                Spacer()
                Spacer()
                Text("It is perfectly legal to write a view like this:")
                CodeView("""
                struct ContentView: View {
                  var body: Text {
                    Text("Hello, world!")
                  }
                }
                """)
                Spacer()
                Spacer()
                Text("""
                Returning **`\(Text("View").coloredText(.red))`** makes no sense, because Swift wants to know what’s inside the view – it has a big hole that must be filled. On the other hand, returning **`\(Text("Text").coloredText(.red))`** is fine, because we’ve filled the hole; Swift knows what the view is.

                There are two places where it gets a bit more complicated:

                1. How does **`\(Text("VStack").coloredText(.red))`** work – it conforms to the **`\(Text("View").coloredText(.red))`** protocol, but how does it fill the “what kind of content does it have?” hole if it can contain lots of different things inside it?

                2. What happens if we send back two views directly from our **`\(Text("body").coloredText(.red))`** property, without wrapping them in a stack?

                To answer the first question first, if you create a **`\(Text("VStack").coloredText(.red))`** with two text views inside, SwiftUI silently creates a **`\(Text("TupleView").coloredText(.red))`** to contain those two views – a special type of view that holds exactly two views inside it. So, the **`\(Text("VStack").coloredText(.red))`** fills the “what kind of view is this?” with the answer “it’s a **`\(Text("TupleView").coloredText(.red))`** containing two text views.”

                As for the second question, Swift silently applies a special attribute to the **`\(Text("body").coloredText(.red))`** property called **`\(Text("@ViewBuilder").coloredText(.red))`**. This has the effect of silently wrapping multiple views in one of those **`\(Text("TupleView").coloredText(.red))`** containers, so that even though it looks like we’re sending back multiple views they get combined into one **`\(Text("TupleView").coloredText(.red))`**.

                This behavior isn’t magic: if you right-click on the **`\(Text("View").coloredText(.red))`** protocol and choose “Jump to Definition”, you’ll see the requirement for the **`\(Text("body").coloredText(.red))`** property and also see that it’s marked with the **`\(Text("@ViewBuilder").coloredText(.red))`** attribute:
                """)
                CodeView("""
                @ViewBuilder @MainActor var body: Self.Body { get }
                """)
            }
        }
        .padding()
    }
}

#Preview {
    Day23_24_SomeViewTypeView()
}
