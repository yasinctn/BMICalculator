//
//  ViewController.swift
//  BMICalculator
//
//  Created by Yasin Cetin on 23.02.2023.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    var result : Float = 0.0
    let brain = CalculatorBrain()
    var kategori = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func CalculateTapped(_ sender: UIButton) {
        
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        result = brain.calculateBMI(height: height, weight: weight)
        kategori = brain.kategori(result)
        self.performSegue(withIdentifier: "toResultVC", sender: self)
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = brain.format(result)
            destinationVC.message = brain.kategori(result)
            destinationVC.result = result
            
        }
        
        
    }
}

