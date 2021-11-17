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
                    
                    //Top section
                    ZStack {
                        Rectangle()
                                .frame(width: .infinity, height: 300)
                                .foregroundColor(Color(UIColor.init(hex: coffee.imageBackground) ?? .red))
                        
                    RemoteImage(url: "https://experian-tech-test.herokuapp.com/images/\(coffee.imageResource)")
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(height: 256, alignment: .center)
                    }
                    
                    //H Scroll
                    Text("Statistics")
                        .font(.system(size: 30, weight: .semibold, design: .default))
                        .padding(.top)
                    ScrollView(.horizontal) {
                        HStack {
                            HScrollCell(title: "Strength", value: String(coffee.strength))
                            HScrollCell(title: "Flavour", value: String(coffee.flavour))
                            HScrollCell(title: "Milk", value: String(coffee.milk).capitalized)
                            HScrollCell(title: "Score", value: String(coffee.score))
                        }
                    }.padding()
                    
                    //Bottom section
                    Text("Summary")
                        .font(.system(size: 30, weight: .semibold, design: .default))
                    Text(coffee.summary)
                        .padding()
                }
            }
            .navigationTitle(coffee.name)
        }
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        /*
         More about Americano Coffee:

         Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. The strength of an Americano varies with the number of shots of espresso and the amount of water added.
         */

        CoffeeDetailView(coffee: Coffee(id: 1, name: "Americano", imageBackground: "coffee_americano.png", imageResource: "coffee_americano.png", strength: 5, flavour: 5, summary: "Thats an awfully hot coffee pot", tags: ["Hot", "Coffee", "Pot"], milk: "no"))
    }
}
