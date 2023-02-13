//
//  LoginViewController.swift
//  TeemieChat
//
//  Created by Nishant Minerva on 11/02/23.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
      

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                                    print(e)
                                } else {
                                    //Navigate to the ChatViewController
                                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                                }
            }

        }
    }
    
}
