//
//  Friend.swift
//  
//
//  Created by Miranda Paquet on 8/24/15.
//
//

import Foundation
import CoreData
@objc(Friend)

class Friend: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var age: NSNumber

}
