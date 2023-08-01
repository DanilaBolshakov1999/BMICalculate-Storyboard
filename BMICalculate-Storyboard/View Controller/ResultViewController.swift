//
//  ResultViewController.swift
//  BMICalculate-Storyboard
//
//  Created by iOS - Developer on 01.08.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValeu: String?
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValeu
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
