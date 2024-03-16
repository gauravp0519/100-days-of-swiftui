//
//  Day35_EdutainmentGameView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-02.
//

import SwiftUI

struct Day35_EdutainmentGameView: View {
    @State private var tableNumber: UInt = 2
    @State private var questionCount: UInt = 5
    @State private var multiplicationQuestionCountValues: [UInt] = [5, 10, 20]
    @State private var appNavigation = AppNavigation.shared

    var body: some View {
        NavigationStack(path: $appNavigation.path) {
            Form {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Select Multiplication Number")
                        .font(.headline)
                    Stepper("Table of \(tableNumber)", value: $tableNumber, in: 2 ... 12)
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text("Select Question Count")
                        .font(.headline)
                    Picker("", selection: $questionCount) {
                        ForEach(multiplicationQuestionCountValues, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .toolbar(content: {
                NavigationLink(value: "startGame") {
                    Text("Start game")
                }
            })
            .navigationDestination(for: ItemModel.self) {
                $0.view
            }
            .navigationDestination(for: String.self) { _ in
                Day35_EdutainmentGameStartView(tableNumber: tableNumber, questionCount: questionCount)
            }
        }
    }
}

#Preview {
    Day35_EdutainmentGameView()
}
