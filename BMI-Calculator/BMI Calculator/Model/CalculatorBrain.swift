
import Foundation
import SwiftUI


struct CalculatorBrain{
    
    var bmi: BMI?
    
   mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
//       bmiValue = BMI(value: bmiValue, advice: "", color: "")
       if bmiValue < 18.5 {
           //print("Underweight")
           bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0, green: 0.5473219752, blue: 1, alpha: 1))
       } else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Keep fit!", color: UIColor(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))
           //print("Normal")
       } else {
           bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 1, green: 0.08464827389, blue: 0.3150269687, alpha: 1))
           //print("Overweight")
       }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "valor nulo"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String{
        let bmiFormatted = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiFormatted
    }
}
