//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Siming Yuan on 6/1/16.
//  Copyright © 2016 Siming Yuan. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    //MARK:FoodTracker Tests
    func testMealInitialization() {
        //Success case
        let potentialItem = Meal(name:"Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //failure case
        let noName = Meal(name:"",photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating,"Negative ratings are invalid,be positive")
        
    }
}
