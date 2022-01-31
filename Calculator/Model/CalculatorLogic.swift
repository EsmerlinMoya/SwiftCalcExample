//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by merlin Moya on 1/31/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number : Double
    
    init (number: Double){
        self.number = number
    }
    
    
    func calculate (sysmbol: String) -> Double?{
        
        if sysmbol == "+/-" {
           return number * -1
        } else if sysmbol == "AC" {
           return 0
        }else if sysmbol  ==  "%" {
          return number * 0.01
        }
        
        return nil
    }
    
}
