//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Harun on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var value : UILabel!
    
    @IBAction func converterChanged(textField:UITextField){
        value.text = textField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        value.text = "0"
    }

    
}

