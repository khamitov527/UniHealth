//
//  ProfileTableViewCell.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    
    @IBOutlet var CategoryLabel: UILabel!
    @IBOutlet var ValueLabel: UILabel!
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
