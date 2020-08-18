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
    
    func bmi() -> Float {
        return Float((weight / (pow(height, 2))))
    }
    
    func recommendation() -> String {
        switch bmi() {
        case ...normalMin:
            return "Please eat more"
        case normalMin...normalMax:
            return "Your are doing fine"
        case normalMax...:
            return "Please stop eating"
        default:
            return "I dont know what to do"
        }
    }
    
    func color() -> UIColor {
        switch bmi() {
        case ...normalMin:
            return #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        case normalMin...normalMax:
            return #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        case normalMax...:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        default:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
    }

}
