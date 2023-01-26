//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Harun on 26.01.2023.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var value : UILabel!
    @IBOutlet var input : UITextField!
    @IBOutlet var background : UIView!
    
    @IBAction func converterChanged(textField:UITextField){
        if textField.text != nil && textField.text != ""{
            let celcius : String = convert(value: textField.text!)
            value.text = celcius
            changeBGColor(celcius: Float(celcius)!)
            changeValueColor(celcius: Float(celcius)!)
        }
    }
    
    @IBAction func dismissKeyboard(_sender:UITapGestureRecognizer){
        input.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.text = "0"
        value.text = convert(value: input.text!)
        let celcius = "0"
        changeBGColor(celcius: Float(celcius)!)
        changeValueColor(celcius: Float(celcius)!)
    }
    
    func convert(value : String) -> String {
        let number = Float(value)
        let celcius : Float = Float((round(((number! - 32) * 5) / 9 * 100)) / 100)
        
        return String(celcius)
    }
    
    func changeBGColor(celcius : Float){
        background.backgroundColor = UIColor(red: CGFloat(0.8 + celcius*0.001), green: CGFloat(0.9 - celcius*0.003), blue: CGFloat(1 - celcius*0.003), alpha: 0.8)
    }
    func changeValueColor(celcius : Float){
        value.textColor = UIColor(red: CGFloat(1-(0.8 + celcius*0.001)), green: CGFloat(1-(0.9 - celcius*0.003)), blue: CGFloat(1-(1 - celcius*0.003)), alpha: 1)
        
        input.backgroundColor = UIColor(red: CGFloat(1-(0.8 + celcius*0.001)), green: CGFloat(1-(0.9 - celcius*0.003)), blue: CGFloat(1-(1 - celcius*0.003)), alpha: 1)
        
        input.textColor = UIColor(red: CGFloat(0.8 + celcius*0.001), green: CGFloat(0.9 - celcius*0.003), blue: CGFloat(1 - celcius*0.003), alpha: 0.8)
    }
}
