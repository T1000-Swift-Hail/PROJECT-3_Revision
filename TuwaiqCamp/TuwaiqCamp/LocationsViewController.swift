//
//  LocationsViewController.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 24/04/1443 AH.
//

import UIKit
import MapKit
class LocationsViewController: UIViewController {

    @IBOutlet weak var LocationsMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        LocationsMapKitViwe()
        // Do any additional setup after loading the view.
    }
    
    func LocationsMapKitViwe() {
        let locations = [
            ["title":"Riyadh" , "latitude": 25.27816323228061 , "longitude":46.733208399337876 ] ,
            ["title":"Hail" , "latitude":27.722207547282476 , "longitude": 41.701892710278265]]
//            ["title":"Abha" , "latitude":"" , "longitude":""] ,
//            ["title":"Al-Qassim" , "latitude":"" , "longitude":""] ,
//            ["title":"Tabuk" , "latitude":"" , "longitude":""] ,
//            ["title":"Medina" , "latitude":"" , "longitude":""] ,
//            ["title":"Jeddah" , "latitude":"" , "longitude":""] ,
//            ["title":"Najran" , "latitude":"" , "longitude":""] ,
//            ["title":"Jazan" , "latitude":"" , "longitude":""] ,
//            ["title":"Makkah" , "latitude":"" , "longitude":""] ,
//            ["title":"Al-Baha" , "latitude":"" , "longitude":""] ,
//            ["title":"Asir" , "latitude":"" , "longitude":""] ,
//            ["title":"Al-Jouf" , "latitude":"" , "longitude":""]]
        
        for location in locations{
            
            let annotationn = MKPointAnnotation()
            annotationn.title = location["title"] as? String
            
            let loc = CLLocationCoordinate2D(latitude: location["latitude"] as! Double,longitude: location["longitude"] as! Double )
            
            annotationn.coordinate = loc
            LocationsMap.addAnnotation(annotationn)
        }
    }
}
