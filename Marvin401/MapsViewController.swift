//
//  MapsViewController.swift
//  Marvin401
//
//  Created by Muthuppalaniappan sivanadiyan on 4/6/17.
//  Copyright © 2017 Mazen Azar. All rights reserved.
//

import UIKit
import GoogleMaps

class MapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        GMSServices.provideAPIKey("AIzaSyAozN38hhhkb2NsGrpemP10XLuaREh41Hg")
        let camera = GMSCameraPosition.camera(withLatitude: 34.018800,
                                              longitude: -118.286509,
                                              zoom: 14)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        let currLocation = CLLocationCoordinate2DMake(34.018800, -118.286509)
        let marker = GMSMarker(position: currLocation)
        marker.title = "MyLocation"
        marker.map = mapView
        
        let pharmacy1 = CLLocationCoordinate2DMake(34.0201, -118.2855)
        let P1marker = GMSMarker(position: pharmacy1)
        P1marker.title = "USC Pharmacy"
        P1marker.map = mapView
        
        let pharmacy2 = CLLocationCoordinate2DMake(34.0087, -118.2779)
        let P2marker = GMSMarker(position: pharmacy2)
        P2marker.title = "Golden Care Pharmacy"
        P2marker.map = mapView
        
        let pharmacy3 = CLLocationCoordinate2DMake(34.0325, -118.2961)
        let P3marker = GMSMarker(position: pharmacy3)
        P3marker.title = "Farmacia San Martin"
        P3marker.map = mapView
        
        let pharmacy4 = CLLocationCoordinate2DMake(34.0286, -118.2911)
        let P4marker = GMSMarker(position: pharmacy4)
        P4marker.title = "Mekagreen Pharmacy"
        P4marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
