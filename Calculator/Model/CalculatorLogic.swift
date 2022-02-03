//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by merlin Moya on 1/31/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number : Double?
    

    mutating func setNumber(_ number: Double){
        
        self.number = number
    }
    
    
    func calculate (sysmbol: String) -> Double?{
        
        if let n = number{
            if sysmbol == "+/-" {
                return n * -1
            } else if sysmbol == "AC" {
                return 0
            }else if sysmbol  ==  "%" {
                return n * 0.01
            }else if sysmbol == "+"{
                
            }else if sysmbol == "=" {
                
            }
        }
        return nil
    }
    
}
