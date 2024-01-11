//
//  Day21_22_StackingFlagButtonsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-07.
//

import SwiftUI

struct Day21_22_StackingFlagButtonsView: View {
    private var countries: [String] {
        ["Estonia", "France", "Germany", "India", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    }

    private var correctAnswerIndex: Int {
        Int.random(in: 0 ..< 3)
    }

    var body: some View {
        ZStack {
            Color.teal
            VStack(spacing: 30) {
                VStack {
                    let countries = countries
                    Text("Guess the flag of")
                        .foregroundStyle(.white)

                    Text(countries[correctAnswerIndex])
                        .foregroundStyle(.white)
                }

                ForEach(0 ..< 3) { index in
                    Button {
                        //
                    } label: {
                        Image(countries[index])
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Day21_22_StackingFlagButtonsView()
}
