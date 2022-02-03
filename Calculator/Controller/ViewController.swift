//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber: Bool = true
    private var displayValue: Double {
        get{
            guard let number = Double(displayLabel.text!) else
            {
                fatalError("Cannot convert display label text to a double")
            }
            return number
        }
        set{
            displayLabel.text = String(newValue)
        }
    }
    
    private let calculator = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
       
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)

        if let calcMethod = sender.currentTitle{
          
        let calculator = CalculatorLogic(number: displayValue)
            guard let result = calculator.calculate(sysmbol: calcMethod) else{
                fatalError("the result of the calculatotion is nill")
            }
           displayValue = result
        }
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //  What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }
            else
            {
                if numValue == "."{
                    guard let currentDisplayValue = Double(displayLabel.text!) else
                    {
                        fatalError("Cannot convert display label text to double")
                    }
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        
    }
    
}

