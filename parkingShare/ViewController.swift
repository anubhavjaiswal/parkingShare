//
//  ViewController.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/9/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController, GIDSignInUIDelegate, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    

    @IBAction func loginTouched(sender: AnyObject) {
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        let backend = sharedManager.sharedInstance
        if !(backend.isValidLogin(emailField.text!, password: passwordField.text!)) {
            errorLabel.text = "Wrong combination of email and password"
        }
        else {
            performSegueWithIdentifier("loggedIn", sender: self)
            print("email:\(emailField.text!), password:\(passwordField.text!)")
        }
        
    }

    @IBAction func signupTouched(sender: AnyObject) {
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    
    @IBAction func emailFieldDidBegin(sender: AnyObject) {
        errorLabel.text = ""
    }
    @IBAction func passwordDidBegin(sender: AnyObject) {
        errorLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        emailField.attributedPlaceholder = NSAttributedString(string: "Email address", attributes: [NSForegroundColorAttributeName: UIColor(red:1, green: 1, blue: 1, alpha: 0.3)])
        passwordField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName: UIColor(red:1, green: 1, blue: 1, alpha: 0.3)])
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}