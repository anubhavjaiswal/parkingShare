//
//  database.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//
import Foundation
import Firebase
import FirebaseDatabase

class database {
    // adds a new listing for the current user's space
    func addNewListing(listing : Listing) {
        
        var ref = FIRDatabaseReference()
        
        let key = ref.child("posts").childByAutoId().key
        
        let post = [listing : Listing]
        
        // create a post in /posts
        let childUpdates = ["/posts/\(key)": post]
        
        ref.updateChildValues(childUpdates)
    }
    
}