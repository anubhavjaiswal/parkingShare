//
//  backend.swift
//  parkingShare
//
//  Created by Anubhav Jaiswal on 9/9/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import Foundation
import lotDataStruct


class parkingShareBackend {
    var location
    var userID
    var buyPriceRange
    var sellPrice
    var buyDistance
    var matchesArray
    var size
    
    var password
    var email
    
    
    
    func etSignInData()
    {
        id = enteredid
        email = enteredemail
        
        CHAIDB.checkSignin
    }
    
    func setLocation(mapLocation: loc) {
        location = loc
    }
    
    func setID() {
        
        
    }
    func setPriceRange() {
        
    }
    func setBuyDistance() {
        
    }
    func setSellPrice() {

    }
    func getMatchesArray() {
        var resultArray
        var allLots = CHAIDB.pullLotArray()
        for (int i =0 ; i < allLots.length; i++) {
            if metCriteria(allLots.i) {
                resultArray.append(allLots.i)
            }
        }
        
        
        
    }
    func sortMatches() {
        
    }
    
    func setSize() {
        
    }
    
    func setLotStruct () {
        var newLotStruct
        newLotStruct.location = location
        newLotStruct.userID = userID
        newLotStruct.price = price
        newLotStruct.size = size
        
        CHAIDB.pushToLotArray(newLotStruct);
        
        
    }
    
    
}