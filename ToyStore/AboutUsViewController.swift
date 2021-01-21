//
//  AboutUsViewController.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-15.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit
import MapKit //display map
import CoreLocation // For user location updates

class AboutUsViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //lat and long of ToyStore(suppose because its cordinates of Georgian College)
        //	44.411407, -79.668236
        let latitude = 44.411675
        let longitude = -79.669102
        let annotation =  MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude:longitude )
        //adding title to map
        annotation.title = "Toy Store"
        //adding pin
        mapView.addAnnotation(annotation)
        //zooming the map 
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500	)
        mapView.setRegion(region, animated: true)
        addressLabel.text = "1 Georgian Dr,\nBarrie ON\n L4M 3X9"
        phoneLabel.text = "705-728-1968"
    }

}

   

