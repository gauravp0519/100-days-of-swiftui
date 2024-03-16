//
//  Day43_NavigationDestinationView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-03.
//

import SwiftUI

private struct DetailView: View {
    let number: Int

    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }

    var body: some View {
        Text("Detail View \(number)")
    }
}

private struct Student: Hashable, Identifiable {
    let id = UUID().uuidString
    let name: String
}

struct Day43_NavigationDestinationView: View {
    @State private var appNavigation = AppNavigation.shared

    private let students: [Student] = [
        .init(name: "Tommy"),
        .init(name: "Harry"),
        .init(name: "John"),
        .init(name: "James"),
        .init(name: "Paul"),
    ]
    var body: some View {
        NavigationStack(path: $appNavigation.path) {
            List {
                Section {
                    ForEach(0 ..< 5) { i in
                        NavigationLink("Select \(i)", value: i)
                    }
                }
                Section {
                    ForEach(students) { student in
                        NavigationLink("Select \(student.name)", value: student)
                    }
                }
            }
            .navigationDestination(for: ItemModel.self) {
                $0.view
            }
            .navigationDestination(for: Int.self) {
                DetailView(number: $0)
            }
            .navigationDestination(for: Student.self) {
                Text("You selected: \($0.name)")
            }
        }
    }
}

#Preview {
    Day43_NavigationDestinationView()
}
