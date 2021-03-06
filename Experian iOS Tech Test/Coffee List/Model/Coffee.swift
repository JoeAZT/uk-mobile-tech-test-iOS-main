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
    var imageResource: String
    var imageBackground: String
    var strength: Int
    var flavour: Int
    var milk: String
    var summary: String
    var tags: [String]
    
    var score: Double {
        let baseScore = Double(strength + flavour)
        
        let multiplier: Double
        switch milk {
        case "optional":
            multiplier = 1.5
        case "no":
            multiplier = 2
        default:
            multiplier = 1
        }
        
        let score = baseScore * multiplier
        return min(score, 20)
    }
}

/// Score cannot be negative
/// Score can be 0
/// Score has a max limit of 20
/// Score is calculated by adding strength plus flavour, multiplied by 1 if it's "yes" milk, multiplied by 1.5 if milk is "optional" and multiplied by 2 if milk is "no"
///
/// This will be in the form "#FF123456"
/// Eg: "Americano"
/// This will be appended to "https://experian-tech-test.herokuapp.com/images/" eg: "https://experian-tech-test.herokuapp.com/images/coffee_americano.png"
