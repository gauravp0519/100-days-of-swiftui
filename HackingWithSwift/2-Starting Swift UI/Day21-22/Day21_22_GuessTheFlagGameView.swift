//
//  Day21_22_GuessTheFlagGameView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-07.
//

import SwiftUI

struct Day21_22_GuessTheFlagGameView: View {
    @State private var countries: [String] = ["Estonia", "France", "Germany", "India", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswerIndex = Int.random(in: 0 ..< 3)
    @State private var score = 0
    private let maxQuestionCount = 8
    @State private var questionCount = 0
    @State private var isShowingIncorrectAnswerAlert = false
    @State private var isShowingGameEndAlert = false
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Spacer()

                Text("Guess the flag")
                    .foregroundStyle(.white)
                    .font(.largeTitle.bold())

                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
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
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerSize:
                    .init(width: 20, height: 20))
                )

                Spacer()
                Spacer()

                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                    .foregroundStyle(.secondary)

                Spacer()
            }
            .padding()
        }
        .alert("Wrong", isPresented: $isShowingIncorrectAnswerAlert) {
            Button("Ok", role: .cancel) {
                validateGame()
            }
        } message: {
            Text("The correct answer is: \(countries[correctAnswerIndex])")
        }
        .alert("Game over", isPresented: $isShowingGameEndAlert) {
            Button("Restart", role: .cancel) {
                gameRestart()
            }
        } message: {
            Text("Your score: \(score) \\ \(maxQuestionCount)")
        }
    }

    private func didTapIndex(_ index: Int) {
        questionCount += 1
        if index == correctAnswerIndex {
            score += 1
            validateGame()
        } else {
            score -= 1
            isShowingIncorrectAnswerAlert = true
        }
    }

    private func validateGame() {
        if questionCount == 8 {
            isShowingGameEndAlert = true
        } else {
            shuffle()
        }
    }

    private func shuffle() {
        countries.shuffle()
        correctAnswerIndex = Int.random(in: 0 ..< 3)
    }

    private func gameRestart() {
        score = 0
        questionCount = 0
        shuffle()
    }
}

#Preview {
    Day21_22_GuessTheFlagGameView()
}
