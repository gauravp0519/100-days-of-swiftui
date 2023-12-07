//
//  UnitLength+Extensions.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-03.
//

import Foundation

extension UnitLength {
    var customName: String {
        switch self {
        case .megameters:
            return "megameters"
        case .kilometers:
            return "kilometers"
        case .hectometers:
            return "hectometers"
        case .decameters:
            return "decameters"
        case .meters:
            return "meters"
        case .decimeters:
            return "meters"
        case .centimeters:
            return "centimeters"
        case .millimeters:
            return "millimeters"
        case .micrometers:
            return "micrometers"
        case .nanometers:
            return "nanometers"
        case .picometers:
            return "picometers"
        case .inches:
            return "inches"
        case .feet:
            return "feet"
        case .yards:
            return "yards"
        case .miles:
            return "miles"
        case .scandinavianMiles:
            return "miles-scandinavian"
        case .lightyears:
            return "light years"
        case .nauticalMiles:
            return "nautical miles"
        case .fathoms:
            return "fathoms"
        case .furlongs:
            return "furlongs"
        case .astronomicalUnits:
            return "astronomical units"
        case .parsecs:
            return "parsecs"
        default:
            return self.symbol
        }
    }
}
