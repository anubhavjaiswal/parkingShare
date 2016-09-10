//
//  listing.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//
// Class that represents a listing for an availabe space

import NSDate   
import Firebase;

class Listing : CLLocationManagerDelegate {
    var location // address of the listing as a string
    var price // price of the listing
    var type // curbside - 1, garage - 2
    var size // 1 - Subcompact, 2 - Compact, 3 - Midsize, 4 - Large
    var start // start date of listing dd-MM-yyyy HH:mm
    var end // end date of listing
    var userID // cannot be set. automatically set to current user
    
    func get_userID() {
        var ref = firebase.auth().currentuser;
        
    }
    // to be called when determining location of this listing 
    func get_location() {
        return location;
    }
    
    // change the location of the listing
    func set_location(newAddress: String) {
        location = newAddress;
    }
    
    // change the price of the listing
    func set_price(newPrice : Float) {
        price = newPrice;
    }
    
    // getting and setting start and end dates
    func get_start() {
        return start
    }
    
    // startDate = dd-MM-yyyy
    func set_start(startDate : String) {
        start = startDate;
        
    }
    
    // return end date
    func get_end() {
        return end;
    }
    
    // endDate = dd-MM-yyyy
    func set_end(endDate : String) {
        end = endDate;
    }
    
    // get and set size
    func get_size() {
        return size;
    }
    
    // 1 <= size <= 5
    func set_size(newSize : Int) {
        size = newSize;
    }
    
    // get and set type
    func get_type() {
        return type;
    }
    
    // set type of the car
    func set_type(newType : Int) {
        type = newType;
    }
}
