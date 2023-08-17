//
//  RecommendedLabelView.swift
//  MySparTest
//
//  Created by Akai on 17/8/23.
//

import SwiftUI

struct RecommendedLabelView: View {
    var body: some View {
        Text("Рекомендуем")
            .font(.headline)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        Spacer()
            .frame(height: 30)
    }
}

struct RecommendedLabelView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedLabelView()
    }
}
