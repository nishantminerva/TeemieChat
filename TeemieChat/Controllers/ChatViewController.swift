//
//  ChatViewController.swift
//  TeemieChat
//
//  Created by Nishant Minerva on 11/02/23.
//


import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var message : [Message] = [
    Message(sender: "1@2.com", body: "Hi"),
    Message(sender: "a@b.com", body: "Hurra"),
    Message(sender: "1@2.com", body: "Hakuna matata"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.appName
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func LogOutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
    }
    
}

extension ChatViewController: UITableViewDelegate {
    
}
