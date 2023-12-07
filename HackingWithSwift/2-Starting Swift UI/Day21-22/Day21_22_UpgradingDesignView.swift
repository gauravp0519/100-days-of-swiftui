//
//  Day21_22_UpgradingDesignView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-07.
//

import SwiftUI

struct Day21_22_UpgradingDesignView: View {
    @State private var countries: [String] = ["Estonia", "France", "Germany", "India", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswerIndex = Int.random(in: 0..<3)
    @State private var score = 0
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()

            VStack {
                Spacer()

                Text("Guess the flag")
                    .foregroundColor(.white)
                    .font(.largeTitle.bold())

                VStack(spacing: 15) {
                    VStack {
                        Text("Guess the flag of")
                            .foregroundStyle(.white)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswerIndex])
                            .foregroundStyle(.white)
                            .font(.largeTitle.weight(.semibold))

                    }

                    ForEach(0..<3) { index in
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
        .ignoresSafeArea()
    }

    func didTapIndex(_ index: Int) {
        if index == correctAnswerIndex {
            score += 1
        } else {
            score -= 1
        }
        countries.shuffle()
        correctAnswerIndex = Int.random(in: 0..<3)
    }
}

struct Day21_22_UpgradingDesignView_Previews: PreviewProvider {
    static var previews: some View {
        Day21_22_UpgradingDesignView()
    }
}
