//
//  ResultViewController.swift
//  BMICalculate-Storyboard
//
//  Created by iOS - Developer on 01.08.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValeu: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValeu
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
