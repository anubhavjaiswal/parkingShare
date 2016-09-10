//
//  createUser.swift
//  parkingShare
//
//  Created by Yupeng Feng on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import FirebaseAuth

class signUp {
    // given a username and email this registers a firebase user
    func createUser (email : String, pwd : String) {
        
        FIRAuth.auth()?.createUserWithEmail(email, password: pwd) { (user, error) in
            
        }
    }
}