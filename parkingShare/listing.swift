//
//  listing.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//
// Class that represents a listing for an availabe space

import Firebase

class Listing : Hashable, Equatable {
    var location : String  // address of the listing as a string
    var price : Float // price of the listing
    var type : Int // curbside - 1, garage - 2
    var size : Int // 1 - Subcompact, 2 - Compact, 3 - Midsize, 4 - Large
    var start : String // start date of listing dd-MM-yyyy HH:mm
    var end : String // end date of listing
    var userID : String // cannot be set. automatically set to current user
    var hashValue: Int {
        return Int(price) * type * size;
    }
    
    init(location : String, price: Float, type : Int, size : Int, start : String, end : String) {
        self.location = location
        self.price = price
        self.type = type
        self.size = size
        self.start = start
        self.end = end
        self.userID = get_userID()
    }

    func get_userID() -> String {
        if let user = FIRAuth.auth()?.currentUser {
            self.userID = user.uid
        }
        return userID;
        
    }
    // to be called when determining location of this listing 
    func get_location() -> String {
        return self.location
    }
    
    // change the location of the listing
    func set_location (newAddress: String) {
        location = newAddress
    }
    
    // change the price of the listing
    func set_price(newPrice : Float) {
        price = newPrice
    }
    
    // getting and setting start and end dates
    func get_start() -> String{
        return start
    }
    
    // startDate = dd-MM-yyyy
    func set_start(startDate : String) {
        start = startDate
        
    }
    
    // return end date
    func get_end() -> String{
        return self.end
    }
    
    // endDate = dd-MM-yyyy
    func set_end(endDate : String) {
        end = endDate
    }
    
    // get and set size
    func get_size() -> Int {
        return self.size
    }
    
    // 1 <= size <= 5
    func set_size(newSize : Int) {
        size = newSize
    }
    
    // get and set type
    func get_type() -> Int{
        return self.type
    }
    
    // set type of the car
    func set_type(newType : Int) {
        type = newType
    }
    
    func ==(lhs : Listing, rhs : Listing) -> Bool {
        return (lhs.location == rhs.location && lhs.userID == rhs.userID)
    }
    
    
}
