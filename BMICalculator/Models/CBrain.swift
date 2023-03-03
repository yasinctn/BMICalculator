//
//  CBrain.swift
//  BMICalculator
//
//  Created by Yasin Cetin on 27.02.2023.
//

import UIKit
import Foundation

struct CalculatorBrain{
    
    func changeColor (_ result: Float) -> UIColor {
        if result < 18.5 {
            return UIColor.cyan
        }else if result > 25.5{
            return UIColor.red
        }else{
            return UIColor.orange
        }
    }
    
    
    
    
    func kategori (_ result: Float) -> String{
        
        
        
        if result < 18.5 {
            return "You should gain some weight 😥"
        }else if result > 25.5{
            return " Opss You need to lose some weight 😥"
        }else{
            return "Excellent 😉😎"
            
        }
    }
    
    
    func format(_ deger: Float) -> String{
        let sonuc = String(format: "%.2f", deger)
        return sonuc
    }
    
    func calculateBMI (height:Float,weight: Float) -> Float{
        let result = weight / pow(height, 2)
        return result
    }
    
}
