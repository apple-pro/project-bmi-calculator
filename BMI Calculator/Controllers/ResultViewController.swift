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
    
    var bmi: String?
    var recommendation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let someView = UIView()
//        someView.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 0.3006207192)
//        someView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
//        view.addSubview(someView)
        
        bmiLabel.text = bmi ?? "Unknown"
        recommendationLabel.text = recommendation ?? "Unknown"
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
