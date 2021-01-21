//
//  CartViewController.swift
//  ToyStore
//
//  Created by Inderpreet Kaur on 2020-12-14.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var displayTextView: UITextView!
    var product:Products = Products() //creating Product Object
    override func viewDidLoad() {
        super.viewDidLoad()
        //checking productName value , its true then displaying alert
        if((product.productName.count == 0)){
            displayTextView.text = ""	
            let alertController1 = UIAlertController (title: "Cart is Empty", message: "Add products", preferredStyle: UIAlertController.Style.alert)
            alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController1, animated: true, completion: nil)
        }
        else{
            //displaying data which is passed from ProductViewController
             displayTextView.text = ""
            let displayString:String = "Product Name : " + product.productName +
                "Product Price : " + String(format: "$ %0.2f",product.productPrice)
        displayTextView.text = displayString
        // Do any additional setup after loading the view.
            totalLabel.text = "Total " + String(format: "$ %0.2f",product.productPrice)
        }
    }
    
    //calling Orderhistory page and sending product info.
    @IBAction func placeOrder(_ sender: Any){
        let orderVc: OrderHistoryViewController = self.storyboard?.instantiateViewController(withIdentifier: "orderHistoryViewController") as! OrderHistoryViewController
        orderVc.productName  = product.productName
        orderVc.productPrice = product.productPrice
        self.navigationController?.pushViewController(orderVc, animated: true)

    }
   
   
    
}
