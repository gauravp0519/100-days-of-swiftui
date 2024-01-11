//
//  Day21_22_FlagStylingView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-07.
//

import SwiftUI

struct Day21_22_FlagStylingView: View {
    @State private var countries: [String] = ["Estonia", "France", "Germany", "India", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswerIndex = Int.random(in: 0 ..< 3)
    @State private var isShowingAlert: Bool = false
    @State private var alertTitle: String = ""
    @State private var score = 0
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black],
                           startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                VStack {
                    Text("Guess the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy))

                    Text(countries[correctAnswerIndex])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                }

                ForEach(0 ..< 3) { index in
                    Button {
                        didTapIndex(index)
                    } label: {
                        Image(countries[index])
                            .clipShape(Capsule())
                    }
                }
            }
        }
        .alert(alertTitle, isPresented: $isShowingAlert) {
            Button("Continue", role: .cancel) {}
        } message: {
            Text("Your score is \(score)")
        }
        .ignoresSafeArea()
    }

    func didTapIndex(_ index: Int) {
        if index == correctAnswerIndex {
            alertTitle = "Correct"
            score += 1
        } else {
            alertTitle = "Wrong"
            score -= 1
        }
        isShowingAlert = true
        countries.shuffle()
        correctAnswerIndex = Int.random(in: 0 ..< 3)
    }
}

#Preview {
    Day21_22_FlagStylingView()
}
