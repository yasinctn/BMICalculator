//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Yasin Cetin on 23.02.2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        messageLabel.text = message
        imageView.backgroundColor = brain.changeColor(result)
        
    }
    

    var result : Float = 0.0
    var brain = CalculatorBrain()
    var bmiValue = "0.0"
    var message = ""
    
    
   

    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
       
    }
}
