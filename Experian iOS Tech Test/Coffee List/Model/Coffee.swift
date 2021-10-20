//
//  Coffee.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import Foundation

struct Coffee: Codable {
    var id: Int
    /// Eg: "Americano"
    var name: String
    /// This will be appended to "https://experian-tech-test.herokuapp.com/images/" eg: "https://experian-tech-test.herokuapp.com/images/coffee_americano.png"
    var imageResource: String
    /// This will be in the form "#FF123456"
    var imageBackground: String
    /// Score cannot be negative
    /// Score can be 0
    /// Score has a max limit of 20
    /// Score is calculated by adding strength plus flavour, multiplied by 1 if it's "yes" milk, multiplied by 1.5 if milk is "optional" and multiplied by 2 if milk is "no"
    ///
    var score: Double? {
       if milk == "optional" {
           return Double(strength * flavour) * 1.5
        } else if milk == "no" {
            return Double(strength * flavour) * 2
        } else {
            return Double(strength * flavour)
        }
    }
    
    var strength: Int
    var flavour: Int
    var milk: String
    var summary: String
    var tags: [String]
}
