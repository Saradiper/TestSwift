//
//  CardsView.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import SwiftUI
//import Combine

struct CardsView: View {
    @State private var deck: [Card] = []
    
    var body: some View {
        List(deck, id: \.id) { card in
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
        .navigationTitle("Magic: The Gathering")
        .listStyle(GroupedListStyle())
        .task {
            deck = await Network.loadData()
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
