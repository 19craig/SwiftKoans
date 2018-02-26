//------------------------------------------------------------------------------
//  FactorialTests.swift
//  SwiftKoansTests
//
//  Created by Craig Hassig on 2/25/18.
//  Copyright (c) 2018 Craig Hassig, released under MIT License
//
//------------------------------------------------------------------------------

import XCTest
@testable import SwiftKoans

class FactorialTests: XCTestCase {
	let sut = Factorial()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFactorialResults() {
		XCTAssertEqual(sut.factorial(0), 1)
		XCTAssertEqual(sut.factorial(1), 1)
 		XCTAssertEqual(sut.factorial(2), 2)
		XCTAssertEqual(sut.factorial(3), 6)
		XCTAssertEqual(sut.factorial(7), 5040)
		XCTAssertEqual(sut.factorial(19), 121645100408832000)
}

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
