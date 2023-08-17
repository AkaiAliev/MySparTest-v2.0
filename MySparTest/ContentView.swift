//
//  ContentView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedView = 1
    
    var body: some View {
        
        VStack{
            LocationView()
            ScrollView(showsIndicators: false) {
                VStack {
                    FirstView()
                    SecondView()
                    ThirdView()
                    FourthView()
                    RecommendedLabelView()
                    FifthView()
                    SweetMoodView()
                    SixthView()
                }
            }
            
            TabView (selection: $selectedView){
                
                Text("")
                
                    .tabItem {
                        Image(systemName: "tree.circle")
                        Text("Главная")
                    } .tag(1)
                
                Text("")
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    } .tag(2)
                
                Text("")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    } .tag(3)
                
                Text("")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    } .tag(4)
            }
            .accentColor(.green)
            .frame(height: 50)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
