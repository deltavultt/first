//
//  StepThreeViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 01.02.2021.
//

import UIKit

var check: String = ""

class StepThreeViewController: UIViewController {
    
  
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var handsButton: UIButton!
    @IBOutlet weak var spineButton: UIButton!
    @IBOutlet weak var torsoButton: UIButton!
    @IBOutlet weak var legsButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        self.image.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0) {
            self.image.alpha = 1.0
            
        }
        if check == "man" {
        image.image = UIImage(named: "man")
        }
        if check == "woman" {
        image.image = UIImage(named: "woman")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  }
    @IBAction func checkButtonPress(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Hands":
            handsButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case "Spine":
            spineButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case "Torso":
            torsoButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case "Legs":
            legsButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case .none:
            break
        case .some(_):
            break
        }
    }
    
    func nextView() {
        performSegue(withIdentifier: "goStepFour", sender: nil)
    }
    
    
}


