//
//  Day17_18_FormattingTextView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-02.
//

import SwiftUI

struct Day17_18_FormattingTextView: View {
    @State private var amount = 0.0

    var body: some View {
        Form {
            TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                .keyboardType(.decimalPad)
        }
    }
}

#Preview {
    Day17_18_FormattingTextView()
}
