//
//  CaloriesTests.swift
//  CaloriesTests
//
//  Created by Тимур Чеберда on 29.03.2023.
//

import XCTest
@testable import Calories

final class CaloriesTests: XCTestCase {
    
    let banana = FoodItem(name: "Banana", caloriesFor100Grams: 89, grams: 118)
    let steak = FoodItem(name: "Steak", caloriesFor100Grams: 271, grams: 225)
    let goatCheese = FoodItem(name: "Goat Cheese", caloriesFor100Grams: 364, grams: 28)
    
    func testEmptyMeal() throws {
        let meal = Meal()
        XCTAssertEqual(meal.calories, 0, "An empty meal should have 0 calories")
    }
    
    func testCalories() {
        var meal = Meal()
        meal.add(banana)
        meal.add(steak)
        meal.add(goatCheese)
        XCTAssertEqual(meal.items.count, 3)
        XCTAssertEqual(meal.calories, 534)
    }
    
}
