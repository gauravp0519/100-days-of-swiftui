//
//  Day16_FormView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_FormView: View {
    var body: some View {
        Form {
            Section {
                Text("Hello, world!")
            }

            Section {
                Text("Hello, world!")
                Text("Hello, world!")
            }
        }
    }
}

struct Day16_FormView_Previews: PreviewProvider {
    static var previews: some View {
        Day16_FormView()
    }
}
