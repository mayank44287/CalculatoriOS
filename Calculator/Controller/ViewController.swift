

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinished : Bool = true
    
    private var displayValue : Double {
        get{
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert string to double")
            }
            return number
        }
        set{
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinished = true
        
        if let calcMethod = sender.currentTitle{
            let calculator = CalcLogic(number : displayValue)
            guard let result = calculator.calculate(symbol: calcMethod) else{
                fatalError("calculation results is nil")
            }
            
            displayValue = result
        }
        
        print("aadasafadfsbdbd")
        print("asfafadf")
        
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let  currValue = sender.currentTitle{
            if isFinished{
                displayLabel.text = currValue
                isFinished = false
                
            }else{
                if currValue == "."{
                   
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return      //this is to stop appending anymore decimals
                                    //after one decimal added
                    }
                }
                
                displayLabel.text = displayLabel.text! + currValue
            }
        }
    }

}

