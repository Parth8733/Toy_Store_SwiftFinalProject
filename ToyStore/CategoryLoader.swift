//
//  CategoryJSONResponse.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import Foundation

public class CategoryLoader{
    
    var category = [Category]()
    //default constructo --- call load method
    init() {
        load()
    }
    
    // reaed the data from json file and store it into Category Array
    func load(){
        if let fileLocation = Bundle.main.url(forResource:"categoryDB", withExtension: "json"){
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Category].self, from: data)
                self.category = dataFromJson
            }catch{
                print(error)
            }
        }
    }
}
	
 
