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
    
    private let normalMin: Float = 10.0
    private let normalMax: Float = 30.0
    
    var height: Float = 1.5
    var weight: Float = 1.0
    
    func calculate() -> BMIResult {
        let v = Float((weight / (pow(height, 2))))
        
        switch v {
        case ...normalMin:
            return BMIResult(color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), recommendation: "Please eat more", value: v)
        case normalMin...normalMax:
            return BMIResult(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), recommendation: "Your are doing fine", value: v)
        case normalMax...:
            return BMIResult(color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), recommendation: "Please stop eating", value: v)
        default:
            return BMIResult(color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), recommendation: "I dont know what to do", value: v)
        }
    }

}

struct BMIResult {
    let color: UIColor
    let recommendation: String
    let value: Float
}
