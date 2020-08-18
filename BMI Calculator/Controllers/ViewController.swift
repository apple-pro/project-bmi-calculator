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
    
    let bmi = BMICalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    @IBAction func changeHeight(_ sender: UISlider) {
        bmi.height = sender.value
        updateView()
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        bmi.weight = sender.value
        updateView()
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC: ResultViewController = segue.destination as? ResultViewController {
            resultVC.bmi = bmi
        }
    }
    
    func updateView() {
        heightLabel.text = String(format: "%.2fm", bmi.height)
        weightLabel.text = "\(Int(bmi.weight))Kg"
    }
}

