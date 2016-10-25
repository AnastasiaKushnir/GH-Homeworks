//
//  main.swift
//  L1E1 Simple Calculator
//
//  Created by Anastasiia on 10/19/16.
//  Copyright © 2016 Anastasiia. All rights reserved.
//

import Foundation

func readNumber(prompt: String) -> Double {
    print("\(prompt)> ", terminator: "")
    let inputedString = readLine()
    
    if inputedString != nil {
        let possibleDouble = Double(inputedString!)
        
        if possibleDouble != nil {
            return possibleDouble!
        }
    }
    
    print("Введена строка не є числом")
    exit(1)
}

func readOperator(prompt: String) -> String {
    print("\(prompt)> ", terminator: "")
    let inputedString = readLine()
    
    if inputedString != nil {
        let operatorSign = inputedString!
        
        if operatorSign == "+" ||
           operatorSign == "-" ||
           operatorSign == "*" ||
           operatorSign == "/" {
            return operatorSign
        }
    }
    
    print("Введена строка не є правильним оператором")
    exit(1)
}

let a = readNumber(prompt: "Введіть перше число")
let b = readNumber(prompt: "Введіть друге число")
let operation = readOperator(prompt: "Введіть операцію")
var result: Double!

switch operation {
case "+":
    result = a + b
case "-":
    result = a - b
case "*":
    result = a * b
case "/":
    result = a / b
default:
    break
}

print("\(a) \(operation) \(b) = \(result!)")
