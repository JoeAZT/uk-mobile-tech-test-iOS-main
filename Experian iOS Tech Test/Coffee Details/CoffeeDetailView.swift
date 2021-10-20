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
                            .fill(Color.red)
                            .frame(width: .infinity, height: 300)
                        
                        RemoteImage(url: "https://experian-tech-test.herokuapp.com/images/coffee_americano.png")
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(height: 256, alignment: .center)
                    }
                    Text("Statistics")
                        .font(.system(size: 30, weight: .semibold, design: .default))
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            CoffeeDetailHScrollCell(topText: "Strength", mainText: "5")
                            CoffeeDetailHScrollCell(topText: "Flavour", mainText: "8")
                            CoffeeDetailHScrollCell(topText: "Milk", mainText: "Optional")
                            CoffeeDetailHScrollCell(topText: "Score", mainText: "20.0")
                        }
                    }
                    Text("Summary")
                        .font(.system(size: 30, weight: .semibold, design: .default))
                        .padding()
                    Text("This is a coffee detail view")
                }
            }
        }
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        /*
         More about Americano Coffee:

         Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. The strength of an Americano varies with the number of shots of espresso and the amount of water added.
         */

        CoffeeDetailView(coffee: Coffee(id: 1, name: "Americano", imageResource: "coffee_americano.png", imageBackground: "#FFB72CFF"))
    }
}

//let colorFromHex = UIColor.init(hex: "#AD7E7EFF")
//let imageURL = URL(string: "https://experian-tech-test.herokuapp.com/images/coffee_mocha.png")
