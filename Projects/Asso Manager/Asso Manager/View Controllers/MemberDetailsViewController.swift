//
//  MemberDetailsViewController.swift
//  Asso Manager
//
//  Created by Ludovic Ollagnier on 07/12/2018.
//  Copyright © 2018 Human Coders. All rights reserved.
//

import UIKit
import CoreLocation

class MemberDetailsViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        geolocateMe()
    }
    
    func geolocateMe() {

        // Configure manager
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters

        // Check authorization
        let authStatus = CLLocationManager.authorizationStatus()
        switch authStatus {
        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
        case .restricted, .denied:
            print("Some features are unavailable because we can't geolocate you!")
        case .authorizedWhenInUse:
            print("Some features are unavailable because we can't geolocate you in background!")
        case .authorizedAlways:
            locationManager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {

        switch status {
        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
        case .restricted, .denied:
            print("Some features are unavailable because we can't geolocate you!")
        case .authorizedWhenInUse:
            print("Some features are unavailable because we can't geolocate you in background!")
        case .authorizedAlways:
            locationManager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        print(locations.last)
    }

}
