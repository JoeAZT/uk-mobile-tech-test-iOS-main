//
//  CoffeeDetailHScrollCell.swift
//  Experian iOS Tech Test
//
//  Created by Joseph Taylor on 18/10/2021.
//

import SwiftUI

struct CoffeeDetailHScrollCell: View {
    
    var topText: String
    var mainText: String
    var body: some View {
        
        VStack {
            Text(topText)
                .font(.system(size: 20, weight: .semibold, design: .default))
                .opacity(0.5)
            Text(mainText)
                .font(.system(size: 30, weight: .bold, design: .default))
        }
        .padding(30)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.black, lineWidth: 2)
            )
    }
}

struct CoffeeDetailHScrollCell_Preview: PreviewProvider {
    static var previews: some View {
        CoffeeDetailHScrollCell(topText: "Top", mainText: "main")
    }
}
