//
//  CategoryTableViewCell.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-12.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
