//
//  ButtonType.swift
//  CalculatorApp
//
//  Created by Kevin Wafula on 03/01/2024.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable {
    case digit(_ digit: Digit)
    case arithmeticOperation(_ operation: ArithmeticOperation)
    
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String {
        switch self {
        case .digit(let digit):
            return digit.description
        case .arithmeticOperation(let operation):
            return operation.description
        case .negative:
            return "±"
        case .percent:
            return "%"
        case .decimal:
            return "."
        case .equals:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .allClear, .clear, .negative, .percent:
            return Color(.lightGray)
        case .arithmeticOperation, .equals:
            return Color(.orange)
        case .digit, .decimal:
            return .secondary
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .allClear, .clear, .negative, .percent:
            return .black
        default:
            return .white
        }
    }
}
