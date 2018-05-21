//
//  LogInViewController.swift
//  ANH
//
//  Created by Abdullah Almutairi on 16/05/2018.
//  Copyright © 2018 Abdullah Almutairi. All rights reserved.
//

import UIKit
import Firebase
import Eureka

class LoginViewController: FormViewController {
    var  logged = false

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        form +++ Section("Please provide your name and phone number")
            <<< EmailRow(){ row in
                row.title = "Your Email"
                row.placeholder = "Enter your email"
            }
            <<< PasswordRow(){
                $0.title = "Password"
                $0.placeholder = "************"
            }
            
            
            
            
            +++ Section("Log In")
            
            <<< ButtonRow(){
                $0.title = "Sign In"
                
               
              
                Auth.auth().signIn(withEmail: emailTextField.text!, password:passwordTextField.text!) { (user, error) in
                    if error != nil {
                        print(error!)
                    
                    }
                    else {
                        print("Log in successful")
                        self.logged = true
                        self.performSegue(withIdentifier: "goToCatagories2", sender: self)
                        
                    }
                }
        }
        
    }
}
