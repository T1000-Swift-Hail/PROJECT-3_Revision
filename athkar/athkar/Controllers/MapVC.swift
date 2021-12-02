//
//  MapVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 27/04/1443 AH.
//24.679590998072992, 46.77941475070846
//21.550044547574135, 39.8461002887061
//24.527420839122705, 39.64871870578124

import UIKit
import MapKit
import CoreLocation
class MapVC: UIViewController {

    @IBOutlet weak var Location: MKMapView!
    
    var locations : Maps!
    override func viewDidLoad() {
        super.viewDidLoad()

       let mousquesMap = [Maps(name: "Al Rajhi Mosque", lattitude: 24.679590998072992, longtitude: 46.77941475070846),Maps(name: "Masjid al-Haram", lattitude: 21.550044547574135, longtitude: 39.8461002887061),Maps(name: "Al Masjid an Nabawi", lattitude: 24.527420839122705, longtitude: 39.64871870578124)]
        let mou = CLLocation(latitude: 24.679590998072992, longitude: 46.77941475070846)
        
        setStartLocation(location: mou, distanation: 30000)
        addAnnotation(locations: mousquesMap)
        
    }
    
    func setStartLocation(location: CLLocation, distanation: CLLocationDistance){
        
        let region = MKCoordinateRegion(center: location.coordinate , latitudinalMeters: distanation, longitudinalMeters: distanation)
        Location.setRegion(region, animated: true)
        Location.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
    }
    func addAnnotation(locations : [Maps]){
        for locationMousque in locations {
            let pin = MKPointAnnotation()
            pin.title = locationMousque.name
            pin.subtitle = locationMousque.name
            pin.coordinate = CLLocationCoordinate2D(latitude: locationMousque.lattitude, longitude: locationMousque.longtitude)
            Location.addAnnotation(pin)
        }
    }
    

}
