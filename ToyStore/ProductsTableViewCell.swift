//
//  ProductsTableViewCell.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    //onClick of cart button
    var actionBlock: (() -> Void)? = nil
    @IBAction func addToCartButton(_ sender: Any) {
        actionBlock?()
    }
}
