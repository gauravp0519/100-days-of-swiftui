//
//  CrewMembersView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-21.
//

import SwiftUI

struct CrewMembersView: View {
    let crew: [CrewMember]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautDetailsView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(.capsule)
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth: 1)
                                )

                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)

                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return CrewMembersView(crew: [
        .init(role: "Command Pilot", astronaut: astronauts["grissom"]!),
        .init(role: "Senior Pilot", astronaut: astronauts["white"]!),
        .init(role: "Pilot", astronaut: astronauts["chaffee"]!),
    ])
    .preferredColorScheme(.dark)
}
