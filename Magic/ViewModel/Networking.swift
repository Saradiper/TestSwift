//
//  Networking.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import Foundation


struct Network {
    static func loadData() async -> [Card] {
        guard let url = URL(string: "https://api.magicthegathering.io/v1/cards") else {
            fatalError("Invalid URL")
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            print("Downloaded data")
            
            if let decodedDeck = try? JSONDecoder().decode(Deck.self, from: data) {
                print("decode ok")
                return decodedDeck.cards
            }
        } catch {
            print("Invalid data")
        }
        return []
    }
}

