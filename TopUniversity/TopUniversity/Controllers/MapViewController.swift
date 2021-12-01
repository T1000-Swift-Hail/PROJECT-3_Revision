//
//  MapViewController.swift
//  TopUniversity
//
//  Created by Hesah Alqhtani on 30/11/2021.
//

import UIKit
import MapKit
import Foundation

class MapViewController: UIViewController {

    @IBOutlet weak var universityMap: MKMapView!
    
    var place : Places!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Determining the locations of the universities by Using array
        let locations = [Places(name: "King Abdulaziz University", lattitude: 21.591650171554683, longtitude: 39.24242117250015), Places(name: "King Fahd University of Petroleum and Minerals", lattitude: 26.400249275404438, longtitude: 50.1324700620998),Places(name: "King Saud University", lattitude: 24.879366139570312, longtitude: 46.62988141561857)]
     
        let location1 = CLLocation(latitude: place.lattitude, longitude:place.longtitude)
        
        
        setStartingLocation(location: location1, distanation: 30000)
        addAnnotation(place: locations)
    }
        
//
    func setStartingLocation(location: CLLocation, distanation: CLLocationDistance){
            
            let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distanation, longitudinalMeters: distanation)
            universityMap.setRegion(region, animated: true)
            universityMap.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
 }
//    function to Determining pin for location by Using for loop
        func addAnnotation(place:[Places]){
            for placee in place {
                let pin = MKPointAnnotation()
                pin.title = placee.name
                pin.subtitle = placee.name
                pin.coordinate = CLLocationCoordinate2D(latitude: placee.lattitude, longitude: placee.longtitude)
                universityMap.addAnnotation(pin)
            }
        }
}


