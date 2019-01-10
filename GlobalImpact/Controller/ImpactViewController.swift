//
//  ViewController.swift
//  GlobalImpact
//
//  Created by Rivas, Angela on 1/10/19.
//  Copyright © 2019 CTEC CSP. All rights reserved.
//

import UIKit
import MapKit

class ImpactViewController: UIViewController
{
    @IBOutlet weak var MKMapKit: MKMapView!
    @IBOutlet weak var MapButton: UIButton!
    @IBOutlet weak var MapImage: UIImageView!
    
    @IBAction func MapButton(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 20 , longitude: 30)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        MKMapKit.animatedZoom(zoomRegion : impactRegion, duration: 2.5)
    }
    override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension MKMapView
{
    public func animatedZoom(zoomRegion: MKCoordinateRegion, duration: TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options:
            UIView.AnimationOptions.curveEaseIn, animations:
            {self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}
