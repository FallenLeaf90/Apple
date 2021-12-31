//
//  ViewController.swift
//  Map
//
//  Created by new on 2021/12/26.
//

import UIKit
import MapKit

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet var myMap: MKMapView!
    @IBOutlet var lblLocationinfo1: UILabel!
    @IBOutlet var lblLocationinfo2: UILabel!
    
    let locationManager = CLLocationManager()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblLocationinfo1.text = ""
        lblLocationinfo2.text = ""
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        myMap.showsUserLocation = true
    }


    @IBAction func sgChangeLocation(_ sender: UISegmentedControl) {
    }
    func goLocation(latitudeValue) -> CLLocationDegrees,
            longitudeValue : CLLocationDegrees, delta span :Double){
            let pLocation = CLLocationCoordinate2DMake(latitudeValue, longitudeValue)
            let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
            let pRegion =. MKCoordinateRegion(center: pLocation, span: spanValue)
                myMap.setRegion(pRegion, animated: true
                )
        
    
    
    }
}

