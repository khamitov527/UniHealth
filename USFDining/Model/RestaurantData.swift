//
//  RestaurantData.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import Foundation
import MapKit

struct RestaurantData {
    
//    var restaurantNumber = 0
    
    let rests = [
        Restaurant(
            name: "Flip Kitchen",
            imageURL: "https://s3.amazonaws.com/tapingo.com/static/media/images/045/863/783bfbcc6c292fc96e4e0dca370d689ba1_55_55.PNG",
            rating: 4,
            address: "4202 E Fowler Ave, Tampa, FL 33620"
        ),
        Restaurant(
            name: "The Hub",
            imageURL: "https://fastly.4sqi.net/img/general/width960/89302171_kAPWtl0a_BCVGmZ1ATcPST-ArPWlys11B_x3QLgZfhI.jpg",
            rating: 5,
            address: "Usf Dogwood Dr, Tampa, FL 33612"
        ),
        Restaurant(
            name: "Juniper-Poplar Dining",
            imageURL: "https://i.ytimg.com/vi/nEVY0DDwgWA/maxresdefault.jpg",
            rating: 3.5,
            address: "12030 USF Beard Drive, Tampa, FL 33617"
        ),
        Restaurant(
            name: "Chick-fil-A",
            imageURL: "https://www.marinersmuseum.org/wp-content/uploads/2014/07/chick-fil-a-logo.png",
            rating: 4.4,
            address: "4202 E Fowler Ave CTR 152, Tampa, FL 33620"
        ),
    ]
    
//    func getRestaurantName() -> String {
//        return rests[restaurantNumber].name
//    }
//    
//    func getRestaurantURL() -> String {
//        return rests[restaurantNumber].imageURL
//    }
//    
//    func getRestaurantRating() -> Double {
//        return rests[restaurantNumber].rating
//    }
//    
//    mutating func nextStory(userChoice: String) {
//
//        let currentFood = foods[foodNumber]
//        if userChoice == currentStory.choice1 {
//            storyNumber = currentStory.choice1Destination
//        } else if userChoice == currentStory.choice2 {
//            storyNumber = currentStory.choice2Destination
//        }
//    }
    
}
