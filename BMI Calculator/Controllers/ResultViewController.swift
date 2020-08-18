//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by StartupBuilder.INFO on 8/18/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var recommendationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        bmiLabel.text = "19.4"
        recommendationLabel.text = "Test"
    }
}
