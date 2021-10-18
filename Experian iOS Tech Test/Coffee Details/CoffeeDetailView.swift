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
                        RemoteImage(url: "https://experian-tech-test.herokuapp.com/images/coffee_americano.png")
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(height: 256, alignment: .center)
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
