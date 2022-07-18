//
//  Card.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import SwiftUI

struct Deck: Codable {
    var cards: [Card]
}

struct Card: Codable, Identifiable {
    let id: String
    let name: String?
    let imageUrl: String?
    let type : String?
    let text: String?
    let rarity: String?
    
    var wrappedName: String {
        name ?? "Unknown name"
    }
    
    var wrappedImageURL: String {
        imageUrl ?? "https://hws.noImage"
    }
   
    var wrappedType: String {
        type ?? "Unknown type"
    }
    
    var wrappedText: String {
        text ?? "Unknown text"
    }

    var wrappedRarity: String {
        rarity ?? "Unknown rarity"
    }
}



