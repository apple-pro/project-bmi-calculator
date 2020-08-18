//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var height: Float = 1.5
    var weight: Float = 50
    var bmi: Float = 0.0
    var recommendation: String = "Do nothing"
    var resultBGColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeHeight(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
        height = sender.value
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
        weight = sender.value
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        bmi = (weight / (pow(height, 2)))
        
        switch bmi {
        case ...10:
            recommendation = "Please eat more"
            resultBGColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        case 11...29:
            recommendation = "Your are doing fine"
            resultBGColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        case 30...:
            recommendation = "Please stop eating"
            resultBGColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        default:
            recommendation = "I dont know what to do"
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC: ResultViewController = segue.destination as? ResultViewController {
            resultVC.bmi = String(format: "%.1f", bmi)
            resultVC.recommendation = recommendation
            resultVC.bgColor = resultBGColor
        }
    }
}

