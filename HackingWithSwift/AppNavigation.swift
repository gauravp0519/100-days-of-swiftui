//
//  AppNavigation.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-03-13.
//

import SwiftUI

@Observable
class AppNavigation {
    private init() {}
    static let shared = AppNavigation()
    var path = NavigationPath()
}
