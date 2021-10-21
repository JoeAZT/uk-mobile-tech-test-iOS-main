//
//  CoffeeTests.swift
//  Experian iOS Tech TestTests
//
//  Created by Experian ECS
//

@testable import Experian_iOS_Tech_Test
import XCTest

class CoffeeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCoffeeScoreCalculation() throws {
        let coffee = Coffee(
            id: 2,
            name: "Cappuccino",
            imageResource: "coffee_cappuccino.png",
            imageBackground: "#FFB72CFF",
            strength: 5,
            flavour: 5,
            milk: "yes",
            summary: "A Cappuccino is an espresso-based coffee",
            tags: ["Very popular", "great taste"]
        )
        XCTAssertTrue(coffee.score == 10.0)
    }
    
    func testCoffeeScoreMax20() throws {
        let coffee = Coffee(
            id: 1,
            name: "Americano",
            imageResource: "coffee_americano.png",
            imageBackground: "#FFB72CFF",
            strength: 10,
            flavour: 10,
            milk: "no",
            summary: "Nice coffee",
            tags: ["Very popular", "great taste"]
        )
        
        XCTAssertTrue(coffee.score == 20)
    }
}

