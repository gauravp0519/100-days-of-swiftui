//
//  Day36_@ObservableClassesView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

private class User {
    var firstName: String = "Taylor"
    var lastName: String = "Swift"
}

struct Day36_ObservableClassesView: View {
    @State private var user = User()

    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")

            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    Day36_ObservableClassesView()
}
