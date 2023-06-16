
import Foundation
import SwiftUI


struct CalculatorBrain{
    
    var bmi: BMI?
    
   mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
//       bmiValue = BMI(value: bmiValue, advice: "", color: "")
       if bmiValue < 18.5 {
           print("Underweight")
           bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:#colorLiteral(red: 0, green: 0.5473219752, blue: 1, alpha: 1))
       } else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Keep fit!", color:#colorLiteral(red: 0.1861308515, green: 1, blue: 0.4500659704, alpha: 1))
           print("Normal")
       } else {
           bmi = BMI(value: bmiValue, advice: "Eat less pies!", color:#colorLiteral(red: 1, green: 0.08464827389, blue: 0.3150269687, alpha: 1))
           print("Overweight")
       }
    }
    
    func getBMIValue() -> String{
        let bmiFormatted = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiFormatted
    }
}
