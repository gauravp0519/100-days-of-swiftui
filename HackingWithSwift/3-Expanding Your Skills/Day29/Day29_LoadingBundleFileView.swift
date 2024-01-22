//
//  Day29_LoadingBundleFileView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-21.
//

import SwiftUI

struct Day29_LoadingBundleFileView: View {
    var body: some View {
        Text(fileContent() ?? "")
    }

    func fileContent() -> String? {
        if let fileUrl = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let content = try? String(contentsOf: fileUrl) {
                return content
            }
        }
        return nil
    }
}

#Preview {
    Day29_LoadingBundleFileView()
}
