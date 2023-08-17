//
//  ThirdView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct SecondCard {
    var id: Int
    let imageURL: String
}

struct ThirdView: View {
    
    let secondCards: [SecondCard] = [
        SecondCard(id: 0, imageURL: "qr"),
        SecondCard(id: 1, imageURL: "bonus"),
        SecondCard(id: 2, imageURL: "qr"),
        SecondCard(id: 3, imageURL: "bonus"),
        SecondCard(id: 4, imageURL: "qr")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(secondCards, id: \.id) { card in
                    SecondCardView(card: card)
                }
            }
        }
        .shadow(radius: 5)
        
        Spacer()
            .frame(height: 30)
    }
}

struct SecondCardView: View {
    let card: SecondCard
    var body: some View {
        VStack{
            Image(card.imageURL)
                .resizable()
                .frame(width: 390, height: 130)
                .cornerRadius(10)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
