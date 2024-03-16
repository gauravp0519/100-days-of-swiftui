//
//  Day33View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-01-23.
//

import SwiftUI

struct Day33View: View {
    private let items: [ItemModel] = [
        .init(title: "Animations Stack",
              description: "",
              view: AnyView(Day33_AnimationStackView())),
        .init(title: "Animation Gestures - Rectangle",
              description: "",
              view: AnyView(Day33_AnimatingGesturesRectView())),
        .init(title: "Animation Gestures - Letters",
              description: "",
              view: AnyView(Day33_AnimatingGesturesLettersView())),
        .init(title: "View visibility transition",
              description: "",
              view: AnyView(Day33_ViewVisibilityTransitionView())),
        .init(title: "Custom Transitions",
              description: "",
              view: AnyView(Day33_CustomTransitionsView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 33")
    }
}

#Preview {
    Day33View()
}
