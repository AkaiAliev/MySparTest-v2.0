//
//  SixthView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct FifthCard {
    var id: Int
    let imageURL: String
}

struct SixthView: View {
    
    let fifthCards: [FifthCard] = [
        FifthCard(id: 0, imageURL: "sorbet1"),
        FifthCard(id: 1, imageURL: "sorbet2"),
        FifthCard(id: 0, imageURL: "sorbet1"),
        FifthCard(id: 1, imageURL: "sorbet2"),
        FifthCard(id: 0, imageURL: "sorbet1"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(fifthCards, id: \.id) { card in
                    FifthCardView(card: card)
                }
            }
        }
        .shadow(radius: 5)
        
        Spacer()
            .frame(height: 30)
    }
}


struct FifthCardView: View {
    let card: FifthCard
    var body: some View {
        VStack{
            Image(card.imageURL)
                .resizable()
                .frame(width: 130, height: 170)
                .cornerRadius(10)
        }
    }
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
