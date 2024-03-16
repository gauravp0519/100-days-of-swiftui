//
//  Day35_EdutainmentGameStartView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-03.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    let isDisabled: Bool

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .foregroundColor(.white)
            .background(isDisabled ? .blue.opacity(0.2) : .blue)
            .cornerRadius(4)
    }
}

private extension UInt {
    static var randomMultiplicationNumber: UInt {
        UInt.random(in: 1 ... 12)
    }
}

struct Day35_Answer {
    let answeredNumber: UInt
    let isCorrect: Bool
}

struct Day35_EdutainmentGameStartView: View {
    private let tableNumber: UInt
    private let questionCount: UInt
    @State private var multiplicationNumbers: [UInt] = []
    @State private var answers: [Day35_Answer?] = []
    @State private var currentQuestionCount: UInt = 0
    private var isPrevButtonDisabled: Bool {
        currentQuestionCount == 1
    }

    private var isLastQuestion: Bool {
        currentQuestionCount == questionCount
    }

    @State private var answeredNumber: UInt?
    @State private var isShowingAlert = false
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""

    init(tableNumber: UInt, questionCount: UInt) {
        self.tableNumber = tableNumber
        self.questionCount = questionCount
    }

    var body: some View {
        VStack {
            if currentQuestionCount >= 1 {
                VStack {
                    Spacer()
                    HStack {
                        Text("\(tableNumber) X \(multiplicationNumbers[Int(currentQuestionCount) - 1]) = ")
                            .font(.largeTitle)

                        TextField("?", value: $answeredNumber, format: .number)
                            .multilineTextAlignment(.center)
                            .frame(width: 80)
                            .border(.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                            .cornerRadius(4)
                            .keyboardType(.numberPad)
                    }
                    HStack {
                        Button("Previous") {
                            previousTapped()
                        }
                        .buttonStyle(CustomButtonStyle(isDisabled: isPrevButtonDisabled))
                        .disabled(isPrevButtonDisabled)

                        Button(isLastQuestion ? "Submit" : "Next") {
                            validateAnswer()
                            if isLastQuestion {
                                submitTapped()
                            } else {
                                nextTapped()
                            }
                        }
                        .buttonStyle(CustomButtonStyle(isDisabled: answeredNumber == nil))
                        .disabled(answeredNumber == nil)
                    }
                    Spacer()
                    Text("Question \(currentQuestionCount)/\(questionCount)")
                }
                .alert(alertTitle, isPresented: $isShowingAlert) {
                    Button("Restart", role: .cancel) {
                        restartGame()
                    }
                } message: {
                    Text(alertMessage)
                }
            }
        }
        .onAppear(perform: {
            restartGame()
        })
    }

    private func previousTapped() {
        currentQuestionCount -= 1
    }

    private func validateAnswer() {
        let expectedAnswerNumber = tableNumber * multiplicationNumbers[Int(currentQuestionCount) - 1]
        let isCorrect = expectedAnswerNumber == answeredNumber
        answers[Int(currentQuestionCount) - 1] = .init(answeredNumber: answeredNumber ?? 0, isCorrect: isCorrect)
        answeredNumber = nil
    }

    private func nextTapped() {
        currentQuestionCount += 1
        if multiplicationNumbers.count < currentQuestionCount {
            multiplicationNumbers.append(UInt.randomMultiplicationNumber)
        }
    }

    private func submitTapped() {
        let score = answers.compactMap {
            ($0?.isCorrect ?? false) ? $0 : nil
        }.count
        isShowingAlert = true
        alertTitle = "Game over"
        alertMessage = "Your score is \(score)/\(questionCount)"
    }

    private func restartGame() {
        answers = .init(repeating: nil, count: Int(questionCount))
        currentQuestionCount = 1
        multiplicationNumbers = [UInt.randomMultiplicationNumber]
    }
}

#Preview {
    Day35_EdutainmentGameStartView(tableNumber: 2, questionCount: 20)
}
