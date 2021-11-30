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
    
    func LocationsMapKitViwe() {
        let locations = [
            ["title":"Riyadh" , "latitude": 25.27816323228061 , "longitude":46.733208399337876 ] ,
            ["title":"Hail" , "latitude":27.722207547282476 , "longitude": 41.701892710278265] ,
            ["title":"Abha" , "latitude": 18.474285353195846 , "longitude": 42.496915095009065] , //
            ["title":"Al-Qassim" , "latitude": 27.011923493355475 , "longitude":44.090231003988116] ,
            ["title":"Tabuk" , "latitude":28.516342625699476 , "longitude":36.56334872515212] ,
            ["title":"Medina" , "latitude":25.017951578774962 , "longitude":39.6300391964303] ,
            ["title":"Jeddah" , "latitude":21.504597073900744 , "longitude":39.19328942836984] ,
            ["title":"Najran" , "latitude":17.61966753899133 , "longitude":44.244385561767636] ,//
            ["title":"Jazan" , "latitude":17.093096966466764 , "longitude":42.58583864634238] ,
            ["title":"Makkah" , "latitude": 21.69376537019027 , "longitude":39.826555881267225] ,//
            ["title":"Al-Baha" , "latitude":20.145573089120195 , "longitude":41.443693579876935] ,//
            ["title":"Asir" , "latitude":19.909286763660983 , "longitude":42.9605268815227] ,
            ["title":"Al-Jouf" , "latitude":31.756852751888115 , "longitude":39.301586337694246]]
        
        
        for location in locations{
            let annotationn = MKPointAnnotation()
            annotationn.title = location["title"] as? String
            let loc = CLLocationCoordinate2D(latitude: location["latitude"] as! Double,longitude: location["longitude"] as! Double )
            
            annotationn.coordinate = loc
            LocationsMap.addAnnotation(annotationn)
        }
    }
}
