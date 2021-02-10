//
//  StepTwoViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 01.02.2021.
//

import UIKit


class StepTwoViewController: UIViewController {

    @IBOutlet weak var female: UIButton!
    @IBOutlet weak var male: UIButton!
    
    @IBAction func checkButtonPress(_ sender: UIButton) {
        if  female.backgroundColor == UIColor.init(named: "Yellow") {
            performSegue(withIdentifier: "goStepThree", sender: nil)
            check = "woman"

        }
        else if male.backgroundColor == UIColor.init(named: "Yellow") {
            performSegue(withIdentifier: "goStepThree", sender: nil)
            check = "man"

            
        }
    
    }
    
    @IBAction func femaleClick(_ sender: UIButton) {
       female.backgroundColor = UIColor.init(named: "Yellow")
       male.backgroundColor = UIColor.init(named: "White")
   }
    @IBAction func maleClick(_ sender: UIButton) {
        male.backgroundColor = UIColor.init(named: "Yellow")
        female.backgroundColor = UIColor.init(named: "White")
        
    }
    
}
