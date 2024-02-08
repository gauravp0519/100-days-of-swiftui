//
//  Day34_GuessTheFlagGameView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-02.
//

import SwiftUI

struct SpinYModifier: ViewModifier {
    let degrees: UInt
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(
                .degrees(min(Double(degrees), 360)),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
    }
}

extension AnyTransition {
    static var rotate: AnyTransition {
        .modifier(active: SpinYModifier(degrees: 360),
                  identity: SpinYModifier(degrees: 0))
    }
}

struct Day34_GuessTheFlagGameView: View {
    @State private var countries: [String] = ["Estonia", "France", "Germany", "India", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswerIndex = Int.random(in: 0 ..< 3)
    @State private var score = 0
    private let maxQuestionCount = 8
    @State private var questionCount = 0
    @State private var isShowingIncorrectAnswerAlert = false
    @State private var isShowingGameEndAlert = false
    @State private var correctAnswerAnimationAmount = 0.0
    @State private var wrongAnswerOpacityAnimationAmount = 1.0
    @State private var wrongAnswerScaleAnimationAmount = 1.0

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
                            if correctAnswerIndex == index {
                                Image(countries[index])
                                    .clipShape(Capsule())
                                    .rotation3DEffect(
                                        .degrees(correctAnswerAnimationAmount),
                                        axis: (x: 0.0, y: 1.0, z: 0.0)
                                    )
                            } else {
                                Image(countries[index])
                                    .clipShape(Capsule())
                                    .opacity(wrongAnswerOpacityAnimationAmount)
                                    .scaleEffect(wrongAnswerScaleAnimationAmount)
                            }
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
            withAnimation {
                correctAnswerAnimationAmount = 360
                wrongAnswerOpacityAnimationAmount = 0.25
                wrongAnswerScaleAnimationAmount = 0.5
            } completion: {
                correctAnswerAnimationAmount = 0
                wrongAnswerOpacityAnimationAmount = 1.0
                wrongAnswerScaleAnimationAmount = 1.0
                score += 1
                validateGame()
            }
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
    Day34_GuessTheFlagGameView()
}
