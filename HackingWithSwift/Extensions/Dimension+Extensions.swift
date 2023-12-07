//
//  Dimension+Extensions.swift
//  HackingWithSwift
//
//  Created by Gaurav Pahwa on 2023-12-03.
//

import Foundation

extension Dimension {
    var nameMedium: String {
        let measurementFormatter = MeasurementFormatter()
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .long
        let formattedString = measurementFormatter.string(from: self)
        if formattedString == self.symbol, let unitLength = self as? UnitLength {
            return unitLength.customName
        } else {
            return formattedString
        }
    }
    
    var nameFull: String {
        nameMedium + " (\(self.symbol))"
    }
}
