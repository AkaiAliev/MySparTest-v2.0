//
//  FifthView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct FourthCard {
    var id: Int
    var title: String
    let imageURL: String
}

struct FifthView: View {
    
    let fourthCards: [FourthCard] = [
        FourthCard(id: 0, title: "Супер цена", imageURL: "lamber"),
        FourthCard(id: 1, title: "Удар по ценам", imageURL: "cola"),
        FourthCard(id: 2, title: "Супер цена", imageURL: "lamber"),
        FourthCard(id: 3, title: "Удар по ценам", imageURL: "cola"),
        FourthCard(id: 4, title: "Супер цена", imageURL: "lamber")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(fourthCards, id: \.id) { card in
                    FourthCardView(card: card)
                }
            }
        }
        .shadow(radius: 5)
        
        Spacer()
            .frame(height: 30)
    }
}


struct FourthCardView: View {
    let card: FourthCard
    var body: some View {
        VStack{
            Text(card.title)
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(5)
                .font(.system(size: 10))
            Image(card.imageURL)
                .resizable()
                .frame(width: 130, height: 170)
                .cornerRadius(10)
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
