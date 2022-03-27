//
//  FoodsCell.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit
import Parse

class FoodsCell: UITableViewCell {

    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var foodTitle: UILabel!
    @IBOutlet var foodCalories: UILabel!
    @IBOutlet var foodCount: UILabel!
    @IBOutlet var foodStepper: UIStepper!
    
    var restaurantsData = RestaurantData()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var foodCounterCell : FoodCounter! {
        didSet {
            foodStepper.value = foodCounterCell.foodCounter
            foodCount.text = String(foodCounterCell.foodCounter)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func stepperButtonTapped(_ sender: UIStepper) {
        foodCounterCell.foodCounter = sender.value
        self.foodCount.text = String(sender.value)
    }
    
    
    @IBAction func AddFood(_ sender: Any) {
        let foodeaten = PFObject(className: "FoodsEaten")
        
        
        foodeaten["name"] = foodTitle.text
        foodeaten["calories"] = foodCalories.text
        
        foodeaten.saveInBackground { success, error in
            if success {
                print("Saved")
            } else {
                print("error")
            }
        }
    }
    
}
