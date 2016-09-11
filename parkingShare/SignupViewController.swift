//
//  SignupViewController.swift
//  parkingShare
//
//  Created by Yupeng Feng on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import UIKit


class SignupViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func signupTouched(sender: AnyObject) {
        
        let backend = sharedManager.sharedInstance
        if !(backend.isValidSignup(emailField.text!, password: passwordField.text!)) {
            print("NIGGA YOU DUN GOOFD DAWG")
        }
        print("email:\(emailField.text!), password:\(passwordField.text!)")
    }

    override func viewDidLoad() {
        emailField.attributedPlaceholder = NSAttributedString(string: "Email address", attributes: [NSForegroundColorAttributeName: UIColor(red:1, green: 1, blue: 1, alpha: 0.3)])
        nameField.attributedPlaceholder = NSAttributedString(string: "Your Name", attributes: [NSForegroundColorAttributeName: UIColor(red:1, green: 1, blue: 1, alpha: 0.3)])
        passwordField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName: UIColor(red:1, green: 1, blue: 1, alpha: 0.3)])
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        emailField.resignFirstResponder()
        nameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
}
