//
//  CalculatorButtonItem.swift
//  calculator-book-version
//
//  Created by apple on 2020/4/2.
//  Copyright © 2020 zayze. All rights reserved.
//

import Foundation
import SwiftUI

enum CalculatorButtonItem{
    
    enum Op:String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "×"
        case equal = "="
    }
    
    enum Command:String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem:Hashable{
    var title: String{
        switch self {
        case .digit(let value):
            return String(value)
        case .dot:
            return "."
        case .op(let op):
            return op.rawValue
        case .command(let command):
            return command.rawValue
        }
    }
    var size:CGSize{
        CGSize(width:88,height:88)
    }
    
    var backgroundColorName:String{
        switch self {
        case .digit,.dot:
            return "digitBackground"
        case .op:
            return "operatorBackground"
        case .command:
            return "commandBackground"
        }
    }
}

