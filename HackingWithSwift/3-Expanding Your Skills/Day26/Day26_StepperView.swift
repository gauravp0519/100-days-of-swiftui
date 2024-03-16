//
//  Day26_StepperView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-14.
//

import SwiftUI

struct Day26_StepperView: View {
    @State private var sleepAmount = 8.0

    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4 ... 12, step: 0.25)
            .frame(width: 200)
    }
}

#Preview {
    Day26_StepperView()
}
