//
//  Day39View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2024-02-10.
//

import SwiftUI

struct Day39View: View {
    private let items: [ItemModel] = [
        .init(title: "Image View", description: "", view: AnyView(Day39_ImageView())),
        .init(title: "Image Clipped View", description: "", view: AnyView(Day39_ImageClippedView())),
        .init(title: "Resized Image View", description: "", view: AnyView(Day39_ResizedImageView())),
        .init(title: "scaledToFit Image View", description: "", view: AnyView(Day39_ScaledToFitImageView())),
        .init(title: "Relative height Image View", description: "", view: AnyView(Day39_RelativeHeightImageView())),
        .init(title: "Scroll View with Data", description: "", view: AnyView(Day39_ScrollViewWithDataView())),
        .init(title: "Scroll View with full screen Data", description: "", view: AnyView(Day39_ScrollViewWithFullScreenDataView())),
        .init(title: "Lazy Stack View", description: "", view: AnyView(Day39_LazyStackView())),
        .init(title: "Navigation Link", description: "", view: AnyView(Day39_NavigationLinkView())),
        .init(title: "Custom Navigation Link", description: "", view: AnyView(Day39_CustomNavigationLinkView())),
        .init(title: "Hierarchical Codable Data", description: "", view: AnyView(Day39_HierarchicalCodableDataView())),
        .init(title: "Fixed item LazyVGrid", description: "check with device rotation", view: AnyView(Day39_FixedItemVGridView())),
        .init(title: "Flexible item LazyVGrid", description: "check with device rotation", view: AnyView(Day39_FlexibleItemVGridView())),
        .init(title: "Adaptive item LazyVGrid", description: "check with device rotation", view: AnyView(Day39_AdaptiveItemVGridView())),
    ]

    var body: some View {
        DayListView(items: items, title: "Day 39")
    }
}

#Preview {
    Day39View()
}
