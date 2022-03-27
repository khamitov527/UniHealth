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
    
    var restaurantsData = RestaurantData()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func AddFood(_ sender: Any) {
        let foodeaten = PFObject(className: "FoodsEaten")
        
        
        foodeaten["name"] = foodTitle.text
        foodeaten["calories"] = foodCalories.text
        
        foodeaten.saveInBackground { success, error in
            if success {
//                let main: UIStoryboard =
//                UIStoryboard.init(name: "Main",bundle: nil);
//                 
//                let firstViewController:
//                FoodsViewController = main.instantiateViewController(withIdentifier: "FoodsViewController") as! FoodsViewController;
//                firstViewController.showAlert()
//                
                print("Saved")
            } else {
                print("error")
            }
        }
        
        
    }
    

    
}
