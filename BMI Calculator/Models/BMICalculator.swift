//
//  File.swift
//  BMI Calculator
//
//  Created by StartupBuilder.INFO on 8/18/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
import Foundation

class BMICalculator {
    
    private let healthy: Float = 18.0
    private let overweight: Float = 25.0
    private let obese: Float = 30.0
    private let extremelyObese: Float = 40.0
    
    var height: Float = 1.5
    var weight: Float = 1.0
    
    func calculate() -> BMIResult {
        let v = Float((weight / (pow(height, 2))))
        
        switch v {
        case ...healthy:
            return BMIResult(color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), recommendation: "Please eat more", value: v)
        case healthy...overweight:
            return BMIResult(color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), recommendation: "Your are doing fine", value: v)
        case overweight...obese:
            return BMIResult(color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), recommendation: "Dial down on your food and exercise", value: v)
        case obese...extremelyObese:
            return BMIResult(color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), recommendation: "Please consult your doctor", value: v)
        default:
            return BMIResult(color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), recommendation: "You are hopeless", value: v)
        }
    }

}

struct BMIResult {
    let color: UIColor
    let recommendation: String
    let value: Float
}
