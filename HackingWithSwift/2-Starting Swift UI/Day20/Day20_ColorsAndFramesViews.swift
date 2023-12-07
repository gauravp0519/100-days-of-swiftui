//
//  Day20_ColorsAndFramesView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_ColorsAndFramesView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color.orange
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            Color.white
                .frame(width: 200, height: 200)
                .cornerRadius(100)
            Color.green
                .frame(width: 100, height: 100)
                .cornerRadius(50)
        }
    }
}

struct Day20_ColorsAndFramesView_Previews: PreviewProvider {
    static var previews: some View {
        Day20_ColorsAndFramesView()
    }
}
