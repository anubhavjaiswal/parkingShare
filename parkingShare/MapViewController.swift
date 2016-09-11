//
//  MapViewController.swift
//  parkingShare
//
//  Created by Yupeng Feng on 9/10/16.
//  Copyright © 2016 the Daniels. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var locationAndTime: UIButton!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBAction func locationAndTime(sender: AnyObject) {
        firstView.hidden = true
        searchBar.hidden = false
    }
    
    override func viewDidLoad() {
        locationAndTime.titleLabel!.text = "Current Location  Now - 4:00 PM"
        searchBar.hidden = true
    }
    
    
}
