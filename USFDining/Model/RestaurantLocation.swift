//
//  RestaurantLocation.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import MapKit
import UIKit

class RestaurantLocation: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
