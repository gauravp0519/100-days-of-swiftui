//
//  Day20_BackgroundMaterialView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_BackgroundMaterialView: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            VStack(spacing: 0) {
                Text("regularMaterial")
                    .foregroundStyle(.secondary)
                    .padding(20)
                    .background(.regularMaterial)
                Text("thickMaterial")
                    .foregroundStyle(.secondary)
                    .padding(20)
                    .background(.thickMaterial)
                Text("thinMaterial")
                    .foregroundStyle(.secondary)
                    .padding(20)
                    .background(.thinMaterial)
                Text("ultraThinMaterial")
                    .foregroundStyle(.secondary)
                    .padding(20)
                    .background(.ultraThinMaterial)
                Text("ultraThickMaterial")
                    .foregroundStyle(.secondary)
                    .padding(20)
                    .background(.ultraThickMaterial)
                Text(".green.gradient")
                    .foregroundStyle(.secondary)
                    .padding(20)
                    .background(.green.gradient)
            }
        }
        .ignoresSafeArea()
    }
}

struct Day20_BackgroundMaterialView_Previews: PreviewProvider {
    static var previews: some View {
        Day20_BackgroundMaterialView()
    }
}
