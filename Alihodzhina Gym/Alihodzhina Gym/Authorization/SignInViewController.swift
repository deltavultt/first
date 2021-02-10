//
//  ViewController.swift
//  Alihodzhina Gym
//
//  Created by WSR on 22.01.2021.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInViewController: UIViewController {

    
    // Об=являем элементы интерфейса для обращения к ним из кода
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    
    @IBAction func signInAction(_ sender: UIButton) {
        let url = "http://gym.areas.su/signin?username=\(inputLogin.text!)&password=\(inputPassword.text!)"
        
        AF.request(url, method: .post).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                print("1")
                let json = JSON(value)
                let token = json["notice"]["token"].intValue
                if token > 1 {
                    self.performSegue(withIdentifier: "goMainSegue", sender: nil)
                } else {
                    self.alertShot(message: json["notice"]["answer"].stringValue)
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

