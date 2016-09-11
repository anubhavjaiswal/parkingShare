//  userAuthentication.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import Firebase

class userAuthentication {
    // Sign-Up Features
    
    // given a username and email this registers a firebase user
    func createUserEmailPwd (email : String, pwd : String) -> Bool  {
        var created = false
        FIRAuth.auth()?.createUserWithEmail(email, password: pwd) { (user, error) in
            
            if (user != nil) {
                
                // created account
                print("User has signed up successfully")
                created = true
            }
            else {
                // error arose
                print("Error arose during sign up")
                created = false
            }
        }
        return created
    }
    
    // Sign-in features
    
    // given an email and password, sign in the user
    func signInEmail(email : String, pwd : String) -> Bool{
        var valid = false
        FIRAuth.auth()?.signInWithEmail(email, password: pwd) { (user, error) in
            if (user != nil) {
                // signed in
                valid = true
                print("User has signed up successfully")
            }
            else {
                // error arose
                valid = false
                print("Error arose during sign up")
            }
        }
        return valid
    }
    
    // google sign in implemented in AppDelegate.swift
}