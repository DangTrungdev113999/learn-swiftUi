//
//  Item.swift
//  Test_Swift
//
//  Created by Trung Dang on 04/10/2021.
//

import Foundation
import CoreData

class ItemOK: NSManagedObject, Identifiable {
    @NSManaged var name: String?
    @NSManaged var createdAt: Data?
}

extension ItemOK {
    static func getAllToDoListItems() -> NSFetchRequest<Item> {
        let request: NSFetchRequest<Item> = Item.fetchRequest()
        
        let sort = NSSortDescriptor(key: "createdAt", ascending: false);
        request.sortDescriptors = [sort]
        
        return request
    }
}
