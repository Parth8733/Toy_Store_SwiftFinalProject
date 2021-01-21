//
//  User+CoreDataProperties.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var password: String?

}
