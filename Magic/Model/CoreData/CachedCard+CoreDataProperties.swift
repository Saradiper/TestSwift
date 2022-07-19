//
//  CachedCard+CoreDataProperties.swift
//  Magic
//
//  Created by Sara Diaz Perez on 19/7/22.
//
//

import Foundation
import CoreData


extension CachedCard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedCard> {
        return NSFetchRequest<CachedCard>(entityName: "CachedCard")
    }

    @NSManaged public var id: String?
    @NSManaged public var imageUrl: String?
    @NSManaged public var name: String?
    @NSManaged public var rarity: String?
    @NSManaged public var text: String?
    @NSManaged public var type: String?
    
    public var wrappedId: String {
         id ?? UUID().uuidString
    }
    
    public var wrappedImageUrl: String {
        imageUrl ?? "https://hws.noImage"
    }
    
    public var wrappedName: String {
        name ?? "Unknown name"
    }
    
    public var wrappedRarity: String {
        rarity ?? "Unknown name"
    }
    
    public var wrappedText: String {
        text ?? "Unknown text"
    }
    
    public var wrappedType: String {
        type ?? "Unknown type"
    }
}

extension CachedCard : Identifiable {

}
