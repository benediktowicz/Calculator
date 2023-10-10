import Foundation
import Darwin

struct Calculations {
    func addTwoInt(of firstVal: Int, with secondVal: Int) -> Double {
        return Double(firstVal + secondVal)
    }
    
    func subtractTwoInt(of firstVal: Int, with secondVal: Int) -> Double {
        return Double(firstVal - secondVal)
    }
    
    func multiplyTwoInt(of firstVal: Int, with secondVal: Int) -> Double {
        return Double(firstVal * secondVal)
    }
    
    func divideTwoInt(of firstVal: Int, by secondVal: Int) -> Double {
        if secondVal == 0 {
            return Double.nan
        } else {
            return Double(firstVal) / Double(secondVal)
        }
    }
    
    func radians(_ degrees: Double) -> Double {
        return degrees * .pi / 180.0
    }
    
    func calculateSin(of firstVal: Int) -> Double {
        return sin(radians(Double(firstVal)))
    }
}
