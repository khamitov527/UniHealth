//
//  MapViewController.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mapView: MKMapView!
    
    let locationLatLong = CLLocation(latitude: 28.0602485, longitude: -82.4289462)
    
    let distanceSpan: CLLocationDistance = 3000
    
    func zoomLevel(location: CLLocation){
        
        let mapCoordinates = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distanceSpan, longitudinalMeters: distanceSpan)
        
        mapView.setRegion(mapCoordinates, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flipKitchen = RestaurantLocation(title: "Flip Kitchen", coordinate: CLLocationCoordinate2D(latitude: 28.0592105, longitude: -82.4104106), info: "Today's special: BBQ Wrap.")
        let theHub = RestaurantLocation(title: "The Hub", coordinate: CLLocationCoordinate2D(latitude: 28.066853, longitude: -82.4138877), info: "Today's special: Sushi.")
        let juniperPoplar = RestaurantLocation(title: "Juniper Poplar Dining", coordinate: CLLocationCoordinate2D(latitude: 28.0599501, longitude: -82.418465), info: "Today's special: Tacos.")
        let chickFila = RestaurantLocation(title: "Chick-fil-A", coordinate: CLLocationCoordinate2D(latitude: 28.0639087, longitude: -82.4156687), info: "Today's special: Hash Fries with Chick-fil-A sauce.")
      
        mapView.addAnnotations([flipKitchen, theHub, juniperPoplar, chickFila])
        
        zoomLevel(location: locationLatLong)
        // Do any additional setup after loading the view.
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is RestaurantLocation else { return nil }

        let identifier = "RestaurantLocation"

        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true

            let btn = UIButton(type: .detailDisclosure)
            annotationView?.rightCalloutAccessoryView = btn
        } else {
            annotationView?.annotation = annotation
        }

        return annotationView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
