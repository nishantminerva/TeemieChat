//
//  RegisterViewController.swift
//  TeemieChat
//
//  Created by Nishant Minerva on 11/02/23.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        let email = emailTextfield.text!
        let password = passwordTextfield.text!
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                                print(e)
                            } else {
                                //Navigate to the ChatViewController
                                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                            }
        }
    }
    
}
