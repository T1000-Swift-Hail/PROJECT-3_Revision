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
            ["title":"Najran" , "latitude":19.52088825417902 , "longitude":44.041096390509836] ,
            ["title":"Asir" , "latitude":19.909286763660983 , "longitude":42.9605268815227] ,
            ["title":"Abha" , "latitude":21.649641814349863 , "longitude":44.189426855064255] ,
            ["title":"Al-Dammam" , "latitude":26.00009825442419 , "longitude":49.55879015983026],
            ["title":"Al-Baha" , "latitude": 22.09126748962605 , "longitude":41.29511328426819],
            ["title":"Al-hadod Al-shamaliah" , "latitude": 29.552512578444738 , "longitude":42.03355070163725],
            ["title":"Al-Jouf" , "latitude":31.756852751888115 , "longitude":39.301586337694246],
            ["title":"Jazan" , "latitude":18.387954754177606 , "longitude":42.634791449389844]
        ]
        
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
