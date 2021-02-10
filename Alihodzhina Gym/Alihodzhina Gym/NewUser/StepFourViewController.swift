//
//  StepFourViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 01.02.2021.
//

import UIKit

class StepFourViewController: UIViewController {

    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var ButtonTwo: UIButton!
    @IBOutlet weak var ButtonThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func ButtonOne(_ sender: UIButton) {
        ButtonOne.backgroundColor = UIColor(named: "Yellow")
        
    }
    
    @IBAction func ButtonTwo(_ sender: UIButton) {
        ButtonTwo.backgroundColor = UIColor(named: "Yellow")
        
    }
    
    @IBAction func ButtonThree(_ sender: UIButton) {
        ButtonThree.backgroundColor = UIColor(named: "Yellow")
        
    }
    
    @IBAction func nextStep(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goStepFive", sender: nil)
    }
    

}
