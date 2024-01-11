//
//  Day16_HelloWorldView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_HelloWorldView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello world!")
        }
    }
}

#Preview {
    Day16_HelloWorldView()
}
