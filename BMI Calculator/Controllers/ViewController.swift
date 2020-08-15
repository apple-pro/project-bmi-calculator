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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeHeight(_ sender: UISlider) {
        heightLabel.text = "\(sender.value)m"
    }
    
    @IBAction func changeWeight(_ sender: UISlider) {
        weightLabel.text = "\(sender.value)kg"
    }
}

