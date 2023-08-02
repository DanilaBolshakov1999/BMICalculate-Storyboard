//
//  CalculatorBrain.swift
//  BMICalculate-Storyboard
//
//  Created by iOS - Developer on 01.08.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.2f", bmi?.valeu ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        var bmiValue = weight / (height * height)
        if bmiValue <= 18.5 {
            bmi = BMI(valeu: bmiValue, advice: "Eat more pies!", color: .systemBlue)
        } else if bmiValue <= 24.9 {
            bmi = BMI(valeu: bmiValue, advice: "Fir as a fiddle!", color: .systemGreen)
        } else if bmiValue > 24.9 {
            bmi = BMI(valeu: bmiValue, advice: "Eat less pies!", color: .systemRed)
        }
    }
}
