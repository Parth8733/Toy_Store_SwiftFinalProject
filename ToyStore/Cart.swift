//
//  Cart.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-14.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import Foundation

struct Cart: Codable{
    var categoryId:Int = 0
    var productId:Int = 0
    var productName:String = ""
    var productImage:String = ""
    var productPrice:Double = 0.0
}
