//
//  ViewController.swift
//  iosmaptest
//
//  Created by Arnold Chen on 8/22/16.
//  Copyright (c) 2016 Arnold. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera                = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.20, zoom: 6.0)
        let mapView               = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        view                      = mapView
        
        // Creates a marker in the center of the map.
        let marker                = GMSMarker()
        marker.position           = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title              = "Sydney"
        marker.snippet            = "Australia"
        marker.map                = mapView
    }


}

