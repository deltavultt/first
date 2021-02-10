//
//  StepFiveViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 01.02.2021.
//

import UIKit

var height: String = "0.0"
var weight: String = "0.0"

class StepFiveViewController: UIViewController {


  
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    
    @IBAction func goAuth(_ sender: UIButton) {
        
        
        if heightInput.text != "" && weightInput.text != "" {
            performSegue(withIdentifier: "goAuth", sender: nil)
            height = heightInput.text!
            weight = weightInput.text!
            print("Command save data, height = \(height) and weight \(weight)")
        } else {
            let alert = UIAlertController(title: "Data empty", message: "Enter data to textField", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)

        }
    }
    
}
