//
//  LocationView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI



struct LocationView: View {
    var body: some View {
        HStack() {
            Label {
                Text("Москва, Москва и Московская область")
                  } icon: {
                      Image(systemName: "mappin")
                          .foregroundColor(.red)
                  }
                .font(.system(size: 16))
                .padding(.horizontal, 10)
                .padding(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray)
                )
            
            Image(systemName: "text.justify")
                .foregroundColor(.green)
        }
        
        Spacer()
            .frame(height: 30)
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
