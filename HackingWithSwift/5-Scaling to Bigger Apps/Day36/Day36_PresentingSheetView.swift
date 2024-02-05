//
//  Day36_PresentingSheetView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-04.
//

import SwiftUI

struct Day36_PresentedSheetView: View {
    @Environment(\.dismiss) var dismiss

    let name: String
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Hello, \(name)!")
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
            Spacer()
            Spacer()
        }
    }
}

struct Day36_PresentingSheetView: View {
    @State var isShowingSheet = false

    var body: some View {
        Button("Show sheet") {
            isShowingSheet.toggle()
        }
        .sheet(isPresented: $isShowingSheet) {
            Day36_PresentedSheetView(name: "Taylor Swift")
        }
    }
}

#Preview {
    Day36_PresentingSheetView()
}
