//
//  main.swift
//  RSA
//
//  Created by Ansheng Zhou on 2024-09-18.
//

import Foundation

func isDivisor(dividend: Int, divisor: Int) -> Bool {
    return dividend % divisor == 0
}

func isRSANumber(number: Int) -> Bool {
    var divisorCount = 0
    
    for i in 1...number {
        if isDivisor(dividend: number, divisor: i) {
            divisorCount += 1
        }
    }
    return divisorCount == 4
}

func getInput(prompt: String) -> Int {
    
    while true {
        print(prompt)
        
        if let input = readLine(), let number = Int(input) {
            
            return number
            
        } else {
            print("try again with a integer")
        }
    }
}

func mainFuc() {
    
    let inputNumber = getInput(prompt: "give me a integer")
    
    if isRSANumber(number: inputNumber) {
        print("\(inputNumber) is RSA number")
    } else {
        print("\(inputNumber) is not a RSA number")
    }
}

mainFuc()
