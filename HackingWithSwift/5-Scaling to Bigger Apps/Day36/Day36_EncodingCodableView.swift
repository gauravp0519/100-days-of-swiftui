//
//  Day36_EncodingCodableView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

private struct User: Codable {
    var firstName: String
    var lastName: String
}

struct Day36_EncodingCodableView: View {
    @State private var user = User(firstName: "Taylor", lastName: "Swift")

    var body: some View {
        VStack {
            Spacer()
            Spacer()
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            Spacer()
            Button("Save user") {
                let encoder = JSONEncoder()

                if let data = try? encoder.encode(user) {
                    UserDefaults.standard.setValue(data, forKey: "UserData")
                }
            }
            Spacer()
            Spacer()
        }
        .frame(width: 250)
    }
}

#Preview {
    Day36_EncodingCodableView()
}
