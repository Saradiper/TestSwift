//
//  CardsView.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import SwiftUI

struct CardsView: View {
    @State private var deck: [Card] = []
    
    @FetchRequest(sortDescriptors: []) var deckCD: FetchedResults<CachedCard>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        List {
            ForEach(deckCD, id: \.self) { card in
                NavigationLink {
                    CardDetailView(card: card)
                } label: {
                    VStack(alignment: .leading) {
                        Text(card.wrappedName)
                            .font(.title3)
                        Text(card.wrappedRarity)
                            .font(.subheadline)
                    }
                }
            }
        }
        .navigationTitle("Magic: The Gathering")
        .listStyle(GroupedListStyle())
        .task {
            deck = await Network.loadData()
            
            await MainActor.run {
                for card in deck {
                    let cached = CachedCard(context: moc)
                    cached.id = card.id
                    cached.name = card.name
                    cached.imageUrl = card.imageUrl
                    cached.type = card.type
                    cached.text = card.text
                    cached.rarity = card.rarity
                    print("Success cached")
                }
            }
            
            do {
                if moc.hasChanges {
                    try moc.save()
                    print("Success saved cached")
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
