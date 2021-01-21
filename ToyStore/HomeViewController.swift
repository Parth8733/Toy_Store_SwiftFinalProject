//
//  HomeViewController.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-12.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var userName:String! = ""
    //creating cetegory data
    let categoryData = CategoryLoader().category
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
    }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryData.count
    }
    //generates custom cell for category
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tempCell:CategoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryTableViewCell
        tempCell.categoryName.text = categoryData[indexPath.row].name //category name
        tempCell.categoryImage.image = UIImage(named: categoryData[indexPath.row].image)   //category image
        return tempCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let productVC:ProductViewController = self.storyboard?.instantiateViewController(withIdentifier: "productViewController") as! ProductViewController
            //assigning categoryId value to productViewController
            productVC.categoryIdInt = categoryData[indexPath.row].id
            // make it navigate to ProductViewController
            self.navigationController?.pushViewController(productVC, animated: true)
        }
}
