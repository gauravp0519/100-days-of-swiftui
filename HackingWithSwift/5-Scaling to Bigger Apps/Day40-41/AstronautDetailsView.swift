//
//  AstronautDetailsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct AstronautDetailsView: View {
    let astronaut: Astronaut

    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()

                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return AstronautDetailsView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}
