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
    }
    
    //array of regions
    func LocationsMapKitViwe() {
        let locations = [
            ["title":"Riyadh" , "latitude": 25.27816323228061 , "longitude":46.733208399337876 ] ,
            ["title":"Hail" , "latitude":27.722207547282476 , "longitude": 41.701892710278265] ,
            ["title":"Al-Qassim" , "latitude": 27.011923493355475 , "longitude":44.090231003988116] ,
            ["title":"Tabuk" , "latitude":28.516342625699476 , "longitude":36.56334872515212] ,
            ["title":"Medina" , "latitude":25.017951578774962 , "longitude":39.6300391964303] ,
            ["title":"Jeddah" , "latitude":21.504597073900744 , "longitude":39.19328942836984] ,
            ["title":"Jazan" , "latitude":17.093096966466764 , "longitude":42.58583864634238] ,
            ["title":"Asir" , "latitude":19.909286763660983 , "longitude":42.9605268815227] ,
            ["title":"Al-Jouf" , "latitude":31.756852751888115 , "longitude":39.301586337694246]]
        
        
        //To add the pin to all areas
        for location in locations{
            let annotationn = MKPointAnnotation()
            annotationn.title = location["title"] as? String
            let loc = CLLocationCoordinate2D(latitude: location["latitude"] as! Double,longitude: location["longitude"] as! Double )
            
            annotationn.coordinate = loc
            LocationsMap.addAnnotation(annotationn)
        }
    }
}
