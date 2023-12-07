//
//  Day20_RadialGradientView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-04.
//

import SwiftUI

struct Day20_RadialGradientView: View {
    var body: some View {
        RadialGradient(colors: [.green, .white, .orange], center: .center, startRadius: 50, endRadius: 100)
    }
}

struct Day20_RadialGradientView_Previews: PreviewProvider {
    static var previews: some View {
        Day20_RadialGradientView()
    }
}
