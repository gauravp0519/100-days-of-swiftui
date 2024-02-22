//
//  MissionsListLayoutView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct MissionsListLayoutView: View {
    private let missions: [Mission] = Bundle.main.decode("missions.json")
    private let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionDetailsView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)

                        Spacer()

                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)

                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }

                        Spacer()
                    }
                }
            }
            .listRowSeparator(.visible)
        }
    }
}

#Preview {
    MissionsListLayoutView()
        .preferredColorScheme(.dark)
}
