//
//  Day16_StateView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_StateView: View {
    @State var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct Day16_StateView_Previews: PreviewProvider {
    static var previews: some View {
        Day16_StateView()
    }
}
