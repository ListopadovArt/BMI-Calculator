//
//  CalculatorBrain.swift
//  BMI Calculator
//

import UIKit

struct CalculatorBrain {
   
    var bmi: BMI?
    
    mutating func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            self.bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            self.bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            self.bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
}
