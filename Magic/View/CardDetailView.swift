//
//  CardDetailView.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import SwiftUI

struct CardDetailView: View {
    let card: Card
    
    var body: some View {
        VStack(spacing: 16) {
            loadImageView(card: card)
            
            Text(card.wrappedName)
                .font(.title2)
        }
        
        List {
            Text("Type: \(card.wrappedType)")
            Text("Text: \(card.wrappedText)")
        }
    }
}

//struct CardDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardDetailView()
//    }
//}
