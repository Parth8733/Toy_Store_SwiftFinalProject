//
//  ProductViewController.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var categoryIdInt:Int! = 0 //holds categoryId's value
    var products:[Products]! //products
    override func viewDidLoad() {
        super.viewDidLoad()
         let prodcutData  =  ProductLoader().products
        // Do any additional setup after loading the views
       //filtering product via categoryID, which is passed from previous Controller
        products = prodcutData.filter { prodcutData in
        return prodcutData.categoryId == categoryIdInt
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    //Generating custome tabel cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let tempCell:ProductsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductsTableViewCell
        tempCell.productNameLabel.text = products[indexPath.row].productName  //product name
        tempCell.productImageView.image = UIImage(named: products[indexPath.row].productImage) //product image
        tempCell.productPriceLabel.text = String(format:"$ %.2f",products[indexPath.row].productPrice) //product price
        tempCell.actionBlock = { //add to cart on click
            //Navigating CartViewController and sending products
            let cartVC:CartViewController = self.storyboard?.instantiateViewController(withIdentifier: "cartViewController") as! CartViewController
            let selectedProdcut = Products(categoryId: self.products[indexPath.row].categoryId, productId: self.products[indexPath.row].productId, productName: self.products[indexPath.row].productName, productImage: self.products[indexPath.row].productImage, productPrice: self.products[indexPath.row].productPrice)
            cartVC.product = selectedProdcut
            self.navigationController?.pushViewController(cartVC, animated: true)
            }
          return tempCell
    }
    

}

