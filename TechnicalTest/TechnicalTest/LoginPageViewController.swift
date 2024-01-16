//
//  LoginPageViewController.swift
//  TechnicalTest
//
//  Created by Rakha Aiman Mumtaz on 16/01/24.
//

import UIKit

class LoginPageViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTxt: UITextField!
    
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTxt.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        guard let username = usernameTxt.text, let password = passwordTxt.text else {
                    showAlert(message: "Username dan Password tidak boleh kosong.")
                    return
                }

                if username == "alfagift-admin" && password == "asdf" {
                    performSegue(withIdentifier: "toHomePage", sender: self)
                } else {
                    if username.isEmpty {
                        showAlert(message: "Username tidak boleh kosong.")
                    } else if password.isEmpty {
                        showAlert(message: "Password tidak boleh kosong.")
                    } else {
                        showAlert(message: "Username atau Password salah.")
                    }
                }
        
    }
    
    func showAlert(message: String) {
            let alert = UIAlertController(title: "Login Alert", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }

}
