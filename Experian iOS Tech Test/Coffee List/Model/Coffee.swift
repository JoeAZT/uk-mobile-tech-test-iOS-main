//
//  Coffee.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import Foundation

struct Coffee: Codable {
    var id: Int
    var name: String
    var imageBackground: String
    var strength: Int
    var flavour: Int
    var summary: String
    var tags: [String]
    var milk: String
    var score: Double {
        let baseScore = strength * flavour
        var multiplier = 1.0
        switch milk {
        case "no":
            multiplier = 2.0
        case "optional":
            multiplier = 1.5
        default:
            multiplier = 1.0
        }
        return Double(baseScore) * multiplier
    }
}
/// Eg: "Americano"
/// This will be appended to "https://experian-tech-test.herokuapp.com/images/" eg: "https://experian-tech-test.herokuapp.com/images/coffee_americano.png"
/// Score cannot be negative
/// Score can be 0
/// Score has a max limit of 20
/// Score is calculated by adding strength plus flavour, multiplied by 1 if it's "yes" milk, multiplied by 1.5 if milk is "optional" and multiplied by 2 if milk is "no"
