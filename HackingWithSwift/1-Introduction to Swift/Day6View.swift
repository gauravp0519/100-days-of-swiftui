//
//  Day6View.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-01.
//

import SwiftUI

struct Day6View: View {
    private let codeSnippet = #"""
                let options = ["up", "down", "left", "right"]
                
                let secretCombination = ["up", "up", "right"]

                outerLoop: for option1 in options {
                 for option2 in options {
                  for option3 in options {
                
                   print("In loop")
                
                   let attempt = [option1, option2, option3]

                   if attempt == secretCombination {
                
                    print("The combination is \(attempt)!")
                    break outerLoop
                
                   }
                
                  }
                 }
                }
                """#
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("*Swift’s labeled statements allow us to name certain parts of our code, and it’s most commonly used for **breaking out of nested loops**.*")
                    
                    CodeView(self.codeSnippet)
                }
                .padding()
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Breaking nested loops")
            }
        }
    }
}
struct Day6View_Previews: PreviewProvider {
    static var previews: some View {
        Day6View()
    }
}
