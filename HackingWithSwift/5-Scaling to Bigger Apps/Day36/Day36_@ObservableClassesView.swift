//
//  Day36_ObservableClassesView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

fileprivate protocol UserType {
    var firstName: String { get set }
    var lastName: String { get set }
}

fileprivate class UserV1: ObservableObject, UserType {
    var firstName: String = "Taylor"
    var lastName: String = "Swift"
}

@available(iOS 17.0, *)
@Observable
fileprivate class UserV2: UserType {
    var firstName: String = "Taylor"
    var lastName: String = "Swift"
}

struct Day36_ObservableClassesView: View {
    @State private var user: UserType = {
        if #available(iOS 17.0, *) {
            return UserV2()
        } else {
            return UserV1()
        }
    }()

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
