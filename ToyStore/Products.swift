//
//  Products.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import Foundation
//creating structure(Model Class) for Product Json
struct Products: Codable{
    var categoryId:Int = 0
    var productId:Int = 0
    var productName:String = ""
    var productImage:String = ""
    var productPrice:Double = 0.0
}
