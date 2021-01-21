//
//  OrderHistoryViewController.swift
//  ToyStore
//
//  Created by Inderpreet Kaur on 2020-12-14.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class OrderHistoryViewController: UIViewController {
    
    
    @IBOutlet weak var orderIdLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    var productName:String = "" //hold product name
    var productPrice:Double = 0 //hold product price
    override func viewDidLoad() {
        super.viewDidLoad()
        // if it is default value
        if(productPrice == 0 || productName == ""){
            orderIdLabel.text = "0"
            dateLabel.text = "dd-MM-yyyy"
            productNameLabel.text = productName
            productPriceLabel.text = String(format: "$ %0.2f",productPrice)
            totalAmountLabel.text = String(format: "$ %0.2f",productPrice)
            
        }
        //displaying data which is passed from cartViewController
        else{
        let orderId:Int = Int.random(in: 0..<10000) //generating random number
        orderIdLabel.text = String(orderId)
        let dateFromatter = DateFormatter()
        dateFromatter.dateFormat = "dd-MM-yyyy"
        let date = dateFromatter.string(from: Date()) //creatind date and set it to dateFromatter type
        dateLabel.text = date
        productNameLabel.text = productName
        productPriceLabel.text = String(format: "$ %0.2f",productPrice)
        let total:Double = productPrice * 1.13
        totalAmountLabel.text = String(format: "$ %0.2f",total)
        }
    }

}
