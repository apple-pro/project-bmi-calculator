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
        let bmi = weight / (pow(height, 2))
        print(bmi)
    }
}

