//
//  Day39_HierarchicalCodableDataView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-12.
//

import SwiftUI

private struct User: Codable {
    let name: String
    let address: Address
}

private struct Address: Codable {
    let street: String
    let city: String
}

struct Day39_HierarchicalCodableDataView: View {
    private let json = """
    {
        "name": "Taylor Swift",
        "address": {
            "street": "555, Taylor Swift Avenue",
            "city": "Nashville"
        }
    }
    """
    @State private var user: User?
    var body: some View {
        Form {
            Section {
                Text("Name: \(user?.name ?? "")")
                Text("Address: \(address(for: user))")
            }
            Section {
                VStack {
                    Button("Retrieve") {
                        let data = Data(json.utf8)
                        user = try? JSONDecoder().decode(User.self, from: data)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
    }

    private func address(for user: User?) -> String {
        guard let user else {
            return ""
        }
        return "\(user.address.street), \(user.address.city)"
    }
}

#Preview {
    Day39_HierarchicalCodableDataView()
}
