//
//  Mission.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-19.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct MissionCrew: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: Date?
    let crew: [MissionCrew]
    let description: String
}

extension Mission {
    var displayName: String {
        "Apollo \(id)"
    }

    var imageName: String {
        "apollo\(id)"
    }

    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
