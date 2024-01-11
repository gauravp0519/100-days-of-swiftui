//
//  Day20_AlertView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_AlertView: View {
    @State private var isShowingAlert: Bool = false

    var body: some View {
        Button("Tap me") {
            isShowingAlert = true
        }
        .alert("Announcement", isPresented: $isShowingAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this!")
        }
    }
}

#Preview {
    Day20_AlertView()
}
