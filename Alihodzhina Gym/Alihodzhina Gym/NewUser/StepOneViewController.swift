//
//  StepOneViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 01.02.2021.
//

import UIKit

class StepOneViewController: UIViewController {
    
    @IBOutlet weak var weightButton: UIButton!
    @IBOutlet weak var keepButton: UIButton!
    @IBOutlet weak var buildButton: UIButton!

    
    @IBAction func onClickButton(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Weight loss":
            weightButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case "Keeping fit":
            keepButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case "Build muscle":
            buildButton.backgroundColor = UIColor.init(named: "Yellow")
            nextView()
        case .none:
            break
        case .some(_):
            break
        }
        
    }
    func nextView(){
        performSegue(withIdentifier: "goStepTwo", sender: nil)
}

}
