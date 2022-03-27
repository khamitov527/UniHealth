//
//  FoodsViewController.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit

class FoodsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var foodTableView: UITableView!
    
    var foodData = FoodData()
    
    var restaurantNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foodTableView.dataSource = self
        foodTableView.delegate = self
        // Do any additional setup after loading the view.
        
        foodTableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(title == "Chick-fil-A"){
            restaurantNumber = 0
        } else if(title == "Juniper-Poplar Dining"){
            restaurantNumber = 3
        } else if(title == "The Hub"){
            restaurantNumber = 6
        } else if(title == "Flip Kitchen"){
            restaurantNumber = 9
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodsCell") as! FoodsCell
        
        if(indexPath.row < 3){
            let foodie = foodData.foods[restaurantNumber + indexPath.row]
            
            
            let baseUrl = foodie.imageURL
            let imageUrl = URL(string: baseUrl)

            cell.foodImage.af.setImage(withURL: imageUrl!)
            
            let fTitle = foodie.title
            let fCalories = foodie.calories
            
            
            
            cell.foodTitle!.text = fTitle
            cell.foodCalories!.text = String(fCalories)
            
            //cell.foodCount!.text = String(foodCountTimes)
            
        }
            return cell
        
    }
    
//    func showAlert(){
//        let ac = UIAlertController(title: "Meal Added", message: nil, preferredStyle: .alert)
//
//        ac.addAction(UIAlertAction(title: "Okay", style: .default))
//
//        present(ac, animated: true)
//    }

}
