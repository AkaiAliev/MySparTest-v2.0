//
//  SweetMoodView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct SweetMoodView: View {
    var body: some View {
        Text("Сладкое настроение")
            .font(.headline)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        Spacer()
            .frame(height: 30)
    }
}

struct SweetMoodView_Previews: PreviewProvider {
    static var previews: some View {
        SweetMoodView()
    }
}
