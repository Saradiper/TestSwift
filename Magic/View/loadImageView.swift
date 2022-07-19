//
//  loadImageView.swift
//  Magic
//
//  Created by Sara Diaz Perez on 17/7/22.
//

import SwiftUI

struct loadImageView: View {
    let card: CachedCard
    
    var body: some View {
        AsyncImage(url: URL(string: card.wrappedImageUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Image("noImageAvaliable")
                    .resizable()
                    .scaledToFit()
            } else {
                ProgressView()
            }
        }
        .frame(width: 250)
    }
}

//struct loadImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        loadImageView()
//    }
//}
