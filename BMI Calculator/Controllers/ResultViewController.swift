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
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var bmi: BMIResult?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateView() {
        if let b = bmi {
            backgroundImage.backgroundColor = b.color
            bmiLabel.text = String(format: "%.1f", b.value)
            recommendationLabel.text = b.recommendation
        }
    }
}
