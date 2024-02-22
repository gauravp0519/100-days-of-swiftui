//
//  MissionDetailsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-19.
//

import SwiftUI

struct MissionDetailsView: View {
    private let mission: Mission
    private let crew: [CrewMember]

    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        crew = mission.crew.compactMap {
            guard let astronaut = astronauts[$0.name] else {
                return nil
            }
            return CrewMember(role: $0.role, astronaut: astronaut)
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image(mission.imageName)
                        .resizable()
                        .scaledToFit()
                        .containerRelativeFrame(.horizontal) { width, _ in
                            width * 0.6
                        }

                    Text(mission.formattedLaunchDate)
                        .font(.caption)

                    VStack(alignment: .leading) {
                        LightBackgroundDividerView()

                        Text("Mission Details")
                            .font(.title.bold())
                            .padding(.bottom, 5)

                        Text(mission.description)

                        LightBackgroundDividerView()

                        Text("Crew")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)

                    CrewMembersView(crew: crew)
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return MissionDetailsView(mission: missions.first!, astronauts: astronauts)
        .preferredColorScheme(.dark)
}
