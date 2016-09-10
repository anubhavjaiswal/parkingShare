//
//  signIn.swift
//  parkingShare
//
//  Created by Yupeng Feng on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import FirebaseAuth

class signIn {
    
    // given an email and password, sign in the user
    func signInEmail(email : String, pwd : String){
        FIRAuth.auth()?.signInWithEmail(email, password: pwd) { (user, error) in
            // ...
        }
    }
    
    // sign in using google
    func signInGoogle()
}