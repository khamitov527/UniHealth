//
//  RestaurantsCell.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit

class RestaurantsCell: UITableViewCell {

    
    @IBOutlet var restaurantImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var starsImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
