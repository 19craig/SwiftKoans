//------------------------------------------------------------------------------
//  BinarySearchTests.swift
//  SwiftKoansTests
//
//  Created by Craig Hassig on 3/1/18.
//  Copyright (c) 2018 Craig Hassig, released under MIT License
//
//------------------------------------------------------------------------------

import XCTest
@testable import SwiftKoans

class BinarySearchTests: XCTestCase {
	let sut = BinarySearch()
	let noElements = [Int]()
	let oddNumElements = [1, 2, 3, 5, 8, 13, 21]
	let evenNumElements = [1, 2, 3, 5, 8, 13, 21, 34]
	

	func testFindValue() {
		var result = sut.binarySearch(1, array: oddNumElements)
		XCTAssert(result == (0, 3), "Expected (0, 3), found \(result)")

		result = sut.binarySearch(3, array: oddNumElements)
		XCTAssert(result == (2, 3), "Expected (2, 3), found \(result)")

		result = sut.binarySearch(5, array: oddNumElements)
		XCTAssert(result == (3, 1), "Expected (3, 1), found \(result)")

		result = sut.binarySearch(21, array: oddNumElements)
		XCTAssert(result == (6, 3), "Expected (6, 3), found \(result)")

		result = sut.binarySearch(2, array: evenNumElements)
		XCTAssert(result == (1, 2), "Expected (1, 2), found \(result)")

		result = sut.binarySearch(8, array: evenNumElements)
		XCTAssert(result == (4, 3), "Expected (4, 3), found \(result)")
	}
	
	func testNotFound() {
		var result = sut.binarySearch(19, array: [])
		XCTAssert(result == (-1, 1), "Expected (-1, 1), found \(result)")

		result = sut.binarySearch(19, array: oddNumElements)
		XCTAssert(result == (-1, 3), "Expected (-1, 3), found \(result)")

		result = sut.binarySearch(0, array: evenNumElements)
		XCTAssert(result == (-1, 3), "Expected (-1, 3), found \(result)")
	}
}
