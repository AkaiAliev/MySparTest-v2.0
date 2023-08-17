//
//  SecondView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct Card {
    var id: Int
    let imageURL: String
}

struct SecondView: View {
    
    let cards: [Card] = [
        Card(id: 0, imageURL: "discount"),
        Card(id: 1, imageURL: "presents"),
        Card(id: 2, imageURL: "discount"),
        Card(id: 3, imageURL: "presents"),
        Card(id: 4, imageURL: "discount"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(cards, id: \.id) { card in CardView(card: card)
                }
            }
        }
        .shadow(radius: 5)
        
        Spacer()
            .frame(height: 30)
    }
}

struct CardView: View {
    let card: Card
    var body: some View {
        VStack{
            Image(card.imageURL)
                .resizable()
                .frame(width: 350, height: 170)
                .cornerRadius(10)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
