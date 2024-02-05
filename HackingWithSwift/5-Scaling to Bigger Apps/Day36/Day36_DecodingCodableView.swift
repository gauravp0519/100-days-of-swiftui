//
//  Day36_DecodingCodableView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

fileprivate struct User: Codable {
    let firstName: String
    let lastName: String
}

struct Day36_DecodingCodableView: View {
    @State private var user: User?

    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("First name: \(user?.firstName ?? "")")
            Text("Last name: \(user?.lastName ?? "")")
            Spacer()
            Button("Retrieve user") {
                if let data = UserDefaults.standard.value(forKey: "UserData") as? Data {
                    let decoder = JSONDecoder()
                    user = try? decoder.decode(User.self, from: data)
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    Day36_DecodingCodableView()
}
