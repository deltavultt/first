//
//  SignUpViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 05.02.2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignUpViewController: UIViewController {

  
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    
    @IBAction func signUpAction(_ sender: UIButton) {
        let url = "http://gym.areas.su/signup?username=\(loginInput.text!)&email=\(emailInput.text!)&password=\(passwordInput.text!))&weight=\(weight)&height=\(height)"
        
        AF.request(url, method: .post).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let answer = json["notice"]["answer"].stringValue
                if answer == "Success" {
                    self.performSegue(withIdentifier: "goAuthSegue", sender: nil)
                }
            case .failure(let error):
                self.alertShot(message: error.localizedDescription)
            }
        }
    }
        func alertShot(message: String) {
            let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ОК", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        
        
        
    
    }
}
