//
//  BusinessCell.swift
//  Yelp
//
//  Created by Dhriti Chawla on 1/22/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var ratingsImage: UIImageView!
    
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            nameLabel.sizeToFit()
            myImage.setImageWith(business.imageURL!)
            distanceLabel.text = business.distance
            distanceLabel.sizeToFit()
            addressLabel.text = business.address
            addressLabel.sizeToFit()
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            categoriesLabel.text = business.categories
            categoriesLabel.sizeToFit()
            ratingsImage.setImageWith(business.ratingImageURL!)
            
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myImage.layer.cornerRadius = 5
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
     //   nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.numberOfLines = 0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
