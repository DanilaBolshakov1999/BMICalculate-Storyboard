//
//  ViewController.swift
//  BMICalculate-Storyboard
//
//  Created by iOS - Developer on 31.07.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValeu = "0.0"
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height * height)
        bmiValeu = String(format: "%.1f", bmi)
                self.performSegue(withIdentifier: "goToResult", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToResult" {
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.bmiValeu = bmiValeu
            }
        }
    }

