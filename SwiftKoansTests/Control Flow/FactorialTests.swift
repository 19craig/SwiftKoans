//------------------------------------------------------------------------------
//  FactorialTests.swift
//  SwiftKoansTests
//
//  Created by Craig Hassig on 2/25/18.
//  Copyright (c) 2018 Craig Hassig, released under MIT License
//------------------------------------------------------------------------------

import XCTest
@testable import SwiftKoans

class FactorialTests: XCTestCase {
	let sut = Factorial()

    func testFactorial() {
		XCTAssertEqual(sut.factorial(0), 1)
		XCTAssertEqual(sut.factorial(1), 1)
 		XCTAssertEqual(sut.factorial(2), 2)
		XCTAssertEqual(sut.factorial(3), 6)
		XCTAssertEqual(sut.factorial(7), 5040)
		XCTAssertEqual(sut.factorial(19), 121645100408832000)
	}

}
