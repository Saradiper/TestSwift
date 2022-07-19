//
//  DataController.swift
//  Magic
//
//  Created by Sara Diaz Perez on 19/7/22.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "MagicModel")

    init() {
        container.loadPersistentStores { descriptoin, error in
            if let error = error {
                print("Core Data failed: \(error.localizedDescription)")
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}
