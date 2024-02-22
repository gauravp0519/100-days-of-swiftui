//
//  ShapeStyle+Extensions.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-19.
//

import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        .init(red: 0.1, green: 0.1, blue: 0.2)
    }

    static var lightBackground: Color {
        .init(red: 0.2, green: 0.2, blue: 0.3)
    }
}
