//
//  ViewController.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/9/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    

    @IBAction func loginTouched(sender: AnyObject) {
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }

    @IBAction func signupTouched(sender: AnyObject) {
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        emailField.layer.borderWidth = 1.0
        emailField.layer.borderColor = UIColor.whiteColor().CGColor
        emailField.attributedPlaceholder = NSAttributedString(string: "Email address", attributes: [NSForegroundColorAttributeName: UIColor(red:1, green: 1, blue: 1, alpha: 0.3)])
        passwordField.layer.borderWidth = 1.0
        passwordField.layer.borderColor = UIColor.whiteColor().CGColor
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