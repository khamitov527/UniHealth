//
//  RestaurantsViewController.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit
import AlamofireImage

class RestaurantsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet var tableView: UITableView!
    
    var restaurantData = RestaurantData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantData.rests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantsCell") as! RestaurantsCell
        
        let restaurant = restaurantData.rests[indexPath.row]
        
        cell.nameLabel.text = restaurant.name
        
        let baseUrl = restaurant.imageURL
        let imageUrl = URL(string: baseUrl)

        cell.restaurantImage.af.setImage(withURL: imageUrl!)
        
//        let baseStarsUrl = restaurant.rating
//        let ratingUrl = URL(string: baseStarsUrl)
//
//        cell.starsImage.af.setImage(withURL: ratingUrl!)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        let restaurant = restaurantData.rests[indexPath.row].name
        
        //Pass the selected movie to the details view controller
        let foodsViewController = segue.destination as! FoodsViewController
        
        foodsViewController.title = restaurant
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    



}
