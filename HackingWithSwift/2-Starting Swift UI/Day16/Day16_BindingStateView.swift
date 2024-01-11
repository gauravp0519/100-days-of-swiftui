//
//  Day16_BindingStateView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_BindingStateView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
                .autocorrectionDisabled()
            Text("Your name is \(name)")
        }
    }
}

#Preview {
    Day16_BindingStateView()
}
