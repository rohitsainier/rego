//
//  RegoTests.swift
//  RegoTests
//
//  Created by Rohit Saini on 15/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import XCTest
@testable import Rego

class RegoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCool(){
        XCTAssertEqual(10>5, 100>50, "yes that is right!!!")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
