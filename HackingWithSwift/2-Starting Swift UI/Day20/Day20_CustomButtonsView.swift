//
//  Day20_CustomButtonsView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_CustomButtonsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button {
                print("Tapped!")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }

            Button {
                print("Tapped!")
            } label: {
                Image(systemName: "pencil")
            }
            .frame(width: 44, height: 44)
            .border(.black)

            Button {
                print("Tapped!")
            } label: {
                Label("Tap me", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
        }
    }
}

#Preview {
    Day20_CustomButtonsView()
}
