//
//  ProductLoader.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import Foundation

public class ProductLoader {
    //creates products array
    var products = [Products]()
    //default constructor -- will call load method
    init() {
        load()
    }
    //this method will read the data from productDb json file and store it into products array
    func load(){
        if let fileLocation = Bundle.main.url(forResource:"productDB", withExtension: "json"){
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Products].self, from: data)
                self.products = dataFromJson
            }catch{
                print(error)
            }
        }
    }
}
