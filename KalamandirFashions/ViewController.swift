//
//  ViewController.swift
//  KalamandirFashions
//
//  Created by Roja on 23/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var myName: String? = "Rahul"

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.isSecureTextEntry = false
        passwordTextField.isSecureTextEntry = true
        usernameLabel.text = "Your User Name"
        usernameLabel.textColor = UIColor.red
        usernameLabel.backgroundColor = .orange
        passwordTextField.backgroundColor = .systemPink
        self.view.backgroundColor = .yellow
        //myName = nil
        //print(myName!)
        //if let name = myName {
        //    print(name)
        //}else {
        //    print("no name")
        //}
        //guard let name = myName else {
        //    print("No name")
        //    return
        //}
        //print(name)
    }
 
    @IBAction func didTouchLogin() {
        if let username = usernameTextField.text, let password = passwordTextField.text, username.trimmingCharacters(in: .whitespaces).count > 0, password.trimmingCharacters(in: .whitespaces).count > 0 {
            processUsername(username, password: password)
        } else {
            print("Please enter valid username or password")
        }
    }
    
    func processUsername(_ username: String, password: String) {
        print("username: \(username)")
        print("password: \(password)")
    }

}

