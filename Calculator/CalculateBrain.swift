//
//  CalculateBrain.swift
//  Calculator
//
//  Created by liyichao on 15/7/25.
//  Copyright (c) 2015年 zhihu. All rights reserved.
//

import Foundation

class CalculateBrain {
    enum Op {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
    }

    var opStack = [Op]()
    var knownOps = [String:Op]()
    
    init() {
        knownOps["×"] = Op.BinaryOperation("×") { $0 * $1 }
        knownOps["÷"] = Op.BinaryOperation("÷") { $1 / $0 }
        knownOps["+"] = Op.BinaryOperation("+") { $0 + $1 }
        knownOps["−"] = Op.BinaryOperation("−") { $1 - $0 }
        knownOps["√"] = Op.UnaryOperation("√") { sqrt($0) }

    }
    func pushOperand(operand: Double) {
        opStack.append(Op.Operand(operand))
    }
    
    func performOperation(symbol: String) {
        
    }
}