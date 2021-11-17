//
//  HScrollCell.swift
//  Experian iOS Tech Test
//
//  Created by Joseph Taylor on 17/11/2021.
//

import SwiftUI

struct HScrollCell: View {
    
    var title: String
    var value: String
    
    var body: some View {
        
        VStack {
            Text(title)
                .font(.system(size: 20, weight: .regular, design: .default))
                .opacity(0.8)
            Text(value)
                .font(.system(size: 32, weight: .semibold, design: .default))
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 3)
        )
        
    }
    
}

