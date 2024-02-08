//
//  SelectionView.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-01.
//

import SwiftUI

struct SectionModel: Identifiable {
    let id = UUID()
    let title: String
    let items: [ItemModel]
}

struct ItemModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let view: AnyView
}

struct SelectionView: View {
    private let sections: [SectionModel] = [
        .init(title: "Introduction to Swift", items: [
            .init(title: "Day 1",
                  description: "Double precision issue",
                  view: AnyView(Day1View())),
            .init(title: "Day 3",
                  description: "Dictionary default value",
                  view: AnyView(Day3View())),
            .init(title: "Day 6",
                  description: "Breaking nested loops with labelled statements",
                  view: AnyView(Day6View())),
        ]),
        .init(title: "Starting SwiftUI", items: [
            .init(title: "Day 16",
                  description: "#CheckSplitting, part 1",
                  view: AnyView(Day16View())),
            .init(title: "Day 17-18",
                  description: "#CheckSplitting, part 2-3",
                  view: AnyView(Day17_18View())),
            .init(title: "Day 19",
                  description: "#MultipleConvertors",
                  view: AnyView(Day19View())),
            .init(title: "Day 20",
                  description: "#GuessTheFlag, part 1",
                  view: AnyView(Day20View())),
            .init(title: "Day 21-22",
                  description: "#GuessTheFlag, part 2-3",
                  view: AnyView(Day21_22View())),
            .init(title: "Day 23-24",
                  description: "How SwiftUI actually works internally?",
                  view: AnyView(Day23_24View())),
        ]),
        .init(title: "Expanding Your Skills", items: [
            .init(title: "Day 26",
                  description: "#BetterRest, part 1",
                  view: AnyView(Day26View())),
            .init(title: "Day 27",
                  description: "#BetterRest, part 2",
                  view: AnyView(Day27View())),
            .init(title: "Day 28",
                  description: "#BetterRest, part 3",
                  view: AnyView(Day28View())),
            .init(title: "Day 29",
                  description: "#WordScramble, part 1",
                  view: AnyView(Day29View())),
            .init(title: "Day 30",
                  description: "#WordScramble, part 2",
                  view: AnyView(Day30View())),
            .init(title: "Day 31",
                  description: "#WordScramble, part 3",
                  view: AnyView(Day31View())),
            .init(title: "Day 32",
                  description: "#Animation, part 1",
                  view: AnyView(Day32View())),
            .init(title: "Day 33",
                  description: "#Animation, part 2",
                  view: AnyView(Day33View())),
            .init(title: "Day 34",
                  description: "#Animation, part 2",
                  view: AnyView(Day34View())),
        ]),
        .init(title: "Consolidation", items: [
            .init(title: "Day 35", description: "#NumberMultiplication", view: AnyView(Day35View()))
        ]),
        .init(title: "Scaling up to bigger apps", items: [
            .init(title: "Day 36", description: "#iExpense, part 1", view: AnyView(Day36View())),
            .init(title: "Day 37", description: "#iExpense, part 2", view: AnyView(Day37View())),
            .init(title: "Day 38", description: "#iExpense, part 3", view: AnyView(Day38View()))
        ]),
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(self.sections) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: item.view) {
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                        .font(.headline)
                                    if !item.description.isEmpty {
                                        Text(item.description)
                                            .font(.subheadline)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Hacking with SwiftUI ")
        }
    }
}

#Preview {
    SelectionView()
}
