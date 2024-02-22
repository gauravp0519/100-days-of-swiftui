//
//  Bundle+Extensions.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-19.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Unable to locate `\(file)` in bundle")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load `\(file)` from bundle")
        }

        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)

        guard let model = try? decoder.decode(T.self, from: data) else {
            fatalError("Error parsing data from `\(file)` in bundle")
        }

        return model
    }
}
