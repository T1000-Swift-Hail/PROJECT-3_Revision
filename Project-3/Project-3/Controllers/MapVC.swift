//
//  MapVC.swift
//  Project-3
//
//  Created by Majed Alshammari on 24/04/1443 AH.
//

import UIKit
import MapKit
class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 27.5114, longitude: 41.7208)
        setStartLocation(location: initialLocation, distance: 100000)

    }
    
    func setStartLocation(location: CLLocation, distance: CLLocationDistance) {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 300000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
    }

    

}
