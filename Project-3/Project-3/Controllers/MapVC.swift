//
//  MapVC.swift
//  Project-3
//
//  Created by Majed Alshammari on 24/04/1443 AH.
//

import UIKit
import MapKit
import CoreLocation
class MapVC: UIViewController, CLLocationManagerDelegate {

    let manager = CLLocationManager()
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.requestAlwaysAuthorization()
        manager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBest
        }
        let initialLocation = CLLocation(latitude: 27.5114, longitude: 41.7208)
        setStartLocation(location: initialLocation, distance: 100000)

    }
    @IBAction func getLocation(_ sender: Any) {
        manager.requestLocation()
    }
    
    func setStartLocation(location: CLLocation, distance: CLLocationDistance) {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
//        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 300000)
//        mapView.setCameraZoomRange(zoomRange, animated: true)
    }

    

}

extension MapVC {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
           if let location = locations.first {
                print("Found user's location: \(location)", "lat =", location.coordinate.latitude," long = ",location.coordinate.longitude)
          
      
                //marker
                let marker1 = MKPointAnnotation()
                marker1.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
                marker1.title = "My Position"
                mapView.addAnnotation(marker1)
      
           }
      }
      
      func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
           print("Failed to find user's location: \(error.localizedDescription)")
      }
    }
    
    
    
    
    

