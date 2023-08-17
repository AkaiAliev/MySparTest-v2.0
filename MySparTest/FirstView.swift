//
//  FirstView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct Circle {
    var id: Int
    let title, imageURL: String
}

struct FirstView: View {
    
    let circles: [Circle] = [
        Circle(id: 0, title: "Привилегии Мой Spar", imageURL: "spar"),
        Circle(id: 1, title: "Мы в соцсетях", imageURL: "social"),
        Circle(id: 2, title: "3 рецепта коктейлей", imageURL: "cocktails"),
        Circle(id: 3, title: "Дегустация в SPAR", imageURL: "tasting"),
        Circle(id: 4, title: "Новинки недели", imageURL: "news")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(circles, id: \.id ) { circle in CircleView(circle: circle)
                    
                }
            }
        }
        .shadow(radius: 5)
        
        Spacer()
            .frame(height: 30)
    }
}

struct CircleView: View {
    let circle: Circle
    var body: some View {
        VStack{
            Image(circle.imageURL)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
            Text(circle.title)
                .fontWeight(.regular)
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
