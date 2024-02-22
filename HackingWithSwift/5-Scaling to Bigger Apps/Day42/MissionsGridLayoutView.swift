//
//  MissionsGridLayoutView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct MissionsGridLayoutView: View {
    private let missions: [Mission] = Bundle.main.decode("missions.json")
    private let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    private let layout: [GridItem] = [GridItem(.adaptive(minimum: 125))]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionDetailsView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()

                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundStyle(.white)

                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
                        }
                        .clipShape(.rect(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
            }
        }
        .padding([.horizontal, .bottom])
    }
}

#Preview {
    MissionsGridLayoutView()
        .preferredColorScheme(.dark)
}
