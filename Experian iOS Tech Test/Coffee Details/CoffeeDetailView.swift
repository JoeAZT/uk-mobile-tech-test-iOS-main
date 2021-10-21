//
//  CoffeeDetailView.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import SwiftUI

struct CoffeeDetailView: View {
    var coffee: Coffee

    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack {
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(UIColor.init(hex: coffee.imageBackground) ?? .red))
                            .frame(width: .infinity, height: 300)
                        
                        
                        RemoteImage(url: "https://experian-tech-test.herokuapp.com/images/\(coffee.imageResource)")
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(height: 256, alignment: .center)
                    }
                    VStack {
                    Text("Statistics")
                        .font(.system(size: 30, weight: .semibold, design: .default))
                         
                    
                    ScrollView(.horizontal) {
                        HStack {
                            CoffeeDetailHScrollCell(topText: "Strength", mainText: String(coffee.strength))
                            CoffeeDetailHScrollCell(topText: "Flavour", mainText: String(coffee.flavour))
                            CoffeeDetailHScrollCell(topText: "Milk", mainText: coffee.milk.capitalized)
                            CoffeeDetailHScrollCell(topText: "Score", mainText: String(coffee.score))
                        }
                    }
                    Text("Summary")
                        .font(.system(size: 30, weight: .semibold, design: .default))
                        .padding()
                    Text(coffee.summary)
                    }
                    .padding(.horizontal)
                }
            }.navigationTitle(coffee.name)
        }
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        CoffeeDetailView(coffee: Coffee(id: 1, name: "Americano", imageResource: "coffee_americano.png", imageBackground: "#FFB72CFF", strength: 8, flavour: 8, milk: "yes", summary: "Nice coffee", tags: ["Very popular", "great taste"]))
    }
}

//let colorFromHex = UIColor.init(hex: "#AD7E7EFF")
//let imageURL = URL(string: "https://experian-tech-test.herokuapp.com/images/coffee_mocha.png")
/*
 More about Americano Coffee:

 Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. The strength of an Americano varies with the number of shots of espresso and the amount of water added.
 */

//        CoffeeDetailView(coffee: Coffee(id: 1, name: "Americano", imageResource: "coffee_americano.png", imageBackground: "#FFB72CFF"))
