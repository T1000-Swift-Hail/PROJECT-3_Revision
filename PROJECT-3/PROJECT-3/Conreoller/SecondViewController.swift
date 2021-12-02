//
//  SecondViewController.swift
//  PROJECT-3
//
//  Created by Abdoalaziz Alshammari on 02/12/2021.
//

import UIKit
import MapKit
// second controller
class SecondViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var dataText: UITextView!
    // customer entered data in text view
    var dataTextEntered = ""
    
    @IBOutlet weak var dataImage: UIImageView!
    // customer slected image
    var dataImageEntered = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  asgining what the customer write and selcte to display it in second controller
        dataText.text = dataTextEntered
        dataImage.image = dataImageEntered
        
        
        
        let latitude : CLLocationDegrees = 21.314438
        let longtitude : CLLocationDegrees = 40.4324153
        
        let lanDelta : CLLocationDegrees = 0.05
        let longDelta : CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: lanDelta, longitudeDelta: longDelta)
        let cooridnates = CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
        let region = MKCoordinateRegion(center: cooridnates, span: span)
        
        mapOutLet.setRegion(region, animated: true)
        
        let newAnnotation = MKPointAnnotation()
        newAnnotation.title = "My Favorite Place"
        newAnnotation.subtitle = "Will Be Here Soon"
        newAnnotation.coordinate = cooridnates
        mapOutLet.addAnnotation(newAnnotation)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(longPressGeuster(gusterRecognizer:)))
        
        uilpgr.minimumPressDuration = 1
        mapOutLet.addGestureRecognizer(uilpgr)
        
        
    }
    
    @IBOutlet weak var mapOutLet: MKMapView!
    
    @objc func longPressGeuster(gusterRecognizer : UIGestureRecognizer) {
        
        let touchPoint = gusterRecognizer.location(in: self.mapOutLet)
        let coordinte = mapOutLet.convert(touchPoint, toCoordinateFrom: self.mapOutLet)
        
        let newUserAnnotation = MKPointAnnotation()
        newUserAnnotation.title = "My Favorite Place"
        newUserAnnotation.subtitle = "Will Be Here as soon as possible"
        newUserAnnotation.coordinate = coordinte
        mapOutLet.addAnnotation(newUserAnnotation)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func ConfirmOrders(_ sender: Any) {
        
        let alert = UIAlertController(title: "Complete", message: "Dear Customer our team will be contact you soon Don't Worry", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true)
        
    }
    
}





