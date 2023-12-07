//
//  Day16_BindingStateView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day16_BindingStateView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
                .autocorrectionDisabled()
            Text("Your name is \(name)")
        }
    }
}

struct Day16_BindingStateView_Previews: PreviewProvider {
    static var previews: some View {
        Day16_BindingStateView()
    }
}
