//
//  Day36_@StateWithClassesView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

fileprivate class User {
    var firstName: String = "Taylor"
    var lastName: String = "Swift"
}
/*
 `User` is a class the property itself isn’t changing, so `@State` doesn’t notice anything and can’t reload the view. Yes, the values inside the class are changing, but `@State` doesn’t monitor those, so effectively what’s happening is that the values inside our class are being changed but the view isn’t being reloaded to reflect that change.
 */
struct Day36_StateWithClassesView: View {
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
    Day36_StateWithClassesView()
}
