//
//  Day23_24_ViewsAsPropertiesView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-28.
//

import SwiftUI

struct Day23_24_ViewsAsPropertiesView: View {
    @State private var name = "Gaurav"
    @State private var age = 0

    // Stored properties
    private let nameText = Text("**Enter your name name:**")
    private let ageText = Text("**Enter your age name:**")

    // Computed properties
    private var nameTextField: some View {
        TextField("Name", text: $name)
    }

    private var ageTextField: some View {
        TextField("Age", value: $age, format: .number)
    }

    private var outputText: some View {
        Text("Output: **\(name) is \(age) year(s) old**")
    }

    var body: some View {
        ScrollView {
            Spacer()
            nameText
            nameTextField
            Spacer()
            ageText
            ageTextField
            Spacer()
            Spacer()
            Divider()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            outputText
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Divider()
            Text("""
            *Non-mutable UI elements can be defined as **stored property** as it is created only 1 time during the parent view's life cycle.

            However, mutable UI elements should be declared as **computed property**, as it will be created multiple times on every value change.*
            """)
            Divider()
        }
        .multilineTextAlignment(.center)
        .padding()
    }
}

#Preview {
    Day23_24_ViewsAsPropertiesView()
}
