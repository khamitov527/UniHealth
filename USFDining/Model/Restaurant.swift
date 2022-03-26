//
//  Restaurant.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import Foundation
import UIKit

class Restaurant {
    var imageURL: URL?
    var name: String
    var rating: Double
    
    init(dict: ([String: Any])){
        
        imageURL = URL(string: dict["image_url"] as! String)
        name = dict["name"] as! String
        rating = dict["rating"] as! Double
    }
}

