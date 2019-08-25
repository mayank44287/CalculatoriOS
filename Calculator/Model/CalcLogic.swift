

import Foundation

class CalcLogic {
    
    var num : Double
    
    init(number : Double) {
        self.num = number
    }
    
    func calculate(symbol : String) -> Double?{
        
            if symbol == "+/-"{
                return num * -1
            }
            else if symbol == "AC"{
                return 0 
            }
            else if symbol == "%"{
                return num/100
            }
    return nil
        
    }
}
