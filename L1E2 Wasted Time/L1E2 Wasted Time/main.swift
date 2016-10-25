//
//  main.swift
//  L1E2 Wasted Time
//
//  Created by Anastasiia on 10/25/16.
//  Copyright © 2016 Anastasiia. All rights reserved.
//

import Foundation

func readBirthDate() -> Date {
    print("Type you birth date (dd-MM-yyyy HH:mm:ss)> ", terminator: "")
    let inputedString = readLine()
    
    if inputedString != nil {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
    
        let possibleDate = dateFormatter.date(from: inputedString!)
        
        if possibleDate != nil {
            return possibleDate!
        }
    }
    
    print("Inputed string is not valid date in 'dd-MM-yyyy HH:mm:ss' format")
    exit(1)
}

let calendar = Calendar(identifier: .gregorian)
let birthDate = readBirthDate()
let wastedTimeComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: birthDate, to: Date())

let years = wastedTimeComponents.year ?? 0
let monthes = wastedTimeComponents.month ?? 0
let days = wastedTimeComponents.day ?? 0
let hours = wastedTimeComponents.hour ?? 0
let minutes = wastedTimeComponents.minute ?? 0
let seconds = wastedTimeComponents.second ?? 0

// TODO: Modify endings depending on counts
print("Dude, you've wasted \(years) years, \(monthes) monthes, \(days) days, \(hours) hours, \(minutes) minutes and \(seconds) seconds. Congrats!!!")
