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
    func createUserEmailPwd (email : String, pwd : String) {
        
        FIRAuth.auth()?.createUserWithEmail(email, password: pwd) { (user, error) in
            
        }
    }
    
    // Sign-in features
    
    // given an email and password, sign in the user
    func signInEmail(email : String, pwd : String){
        FIRAuth.auth()?.signInWithEmail(email, password: pwd) { (user, error) in
            // ...
        }
    }
    
    // google sign in already implemented in AppDelegate.swift

    
    
    
    
    
    // delete current user
    func deleteCurrentUser() {
        var user = firebase.auth().currentUser;
        
        user.delete().then(function() {
              // User deleted
            }, function(error) {
              // An error happened in deleting the user
        })
    }
    
    // set current user's email address
    func setCurrentEmail(email : string) {
        var user = firebase.auth().currentUser;
        
        user.updateEmail (email).then (function () {
            // Update successful
        }, function(error) {
            // error occurred
        })
    }
}