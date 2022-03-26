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
    
    var counts = [FoodCounter]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foodTableView.dataSource = self
        foodTableView.delegate = self
        // Do any additional setup after loading the view.
 
        counts = [FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0), FoodCounter(foodCounter: 0.0)]
        
        foodTableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodData.foods.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodsCell") as! FoodsCell
        
        let foodie = foodData.foods[indexPath.row]
        
        
        let baseUrl = foodie.imageURL
        let imageUrl = URL(string: baseUrl)

        cell.foodImage.af.setImage(withURL: imageUrl!)
        
        let fTitle = foodie.title
        let fDesription = foodie.description
        let fCalories = foodie.calories
        
        
        cell.foodTitle!.text = fTitle
        cell.foodDescription!.text = fDesription
        cell.foodCalories!.text = String(fCalories)
        //cell.foodCount!.text = String(foodCountTimes)
        
        
        cell.foodCounterCell = counts[indexPath.row]
        
        return cell
        
    }

    func stepperButton(sender: FoodsCell) {
        if let indexPath = foodTableView.indexPath(for: sender){
            print(indexPath)
        }
    }

}
