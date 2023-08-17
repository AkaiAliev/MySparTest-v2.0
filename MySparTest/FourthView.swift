//
//  FourthView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct ThirdCard {
    var id: Int
    let imageURL: String
}

struct FourthView: View {
    
    let thirdCards: [ThirdCard] = [
        ThirdCard(id: 0, imageURL: "coffee"),
        ThirdCard(id: 1, imageURL: "cake"),
        ThirdCard(id: 2, imageURL: "coffee"),
        ThirdCard(id: 3, imageURL: "cake"),
        ThirdCard(id: 4, imageURL: "coffee")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(thirdCards, id: \.id) { card in
                    ThirdCardView(card: card)
                }
            }
        }
        .shadow(radius: 5)
        
        Spacer()
            .frame(height: 30)
    }
}

struct ThirdCardView: View {
    let card: ThirdCard
    var body: some View {
        VStack{
            Image(card.imageURL)
                .resizable()
                .frame(width: 100, height: 130)
                .cornerRadius(10)
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
