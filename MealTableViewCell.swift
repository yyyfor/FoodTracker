//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Siming Yuan on 6/2/16.
//  Copyright © 2016 Siming Yuan. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    //MARK:Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
