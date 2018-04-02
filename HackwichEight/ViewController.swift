//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Makayla Yanos. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    //set initial location to UHWO
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let restaurantOne = CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098)
    let restaurantTwo = CLLocationCoordinate2D(latitude: 21.338298, longitude: -158.077973)
    let restaurantThree = CLLocationCoordinate2D(latitude: 21.339880, longitude: -158.078137)
    //set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       centerMapOnLocation(location: initialLocation)
        
        //create an Restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        let restaurantTwo = Restaurant(title: "My Cafe", type: "Comfort Food", coordinate: CLLocationCoordinate2D(latitude: 21.338298, longitude: -158.077973))
        mapView.addAnnotation(restaurantTwo)
        let restaurantThree = Restaurant(title: "Sushi Bay", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.339880, longitude: -158.078137))
        mapView.addAnnotation(restaurantThree)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

