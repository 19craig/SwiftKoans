//------------------------------------------------------------------------------
//  BinarySearch.swift
//  SwiftKoans
//
//  Created by Craig Hassig on 3/1/18.
//  Copyright (c) 2018 Craig Hassig, released under MIT License
//
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//	Definition:
//
//	Binary search works on a sorted collection by comparing the seeked value
//	with the middle element. If seeked is larger than the middle element,
//	perform a binary search on the upper half of the collection. If seeked is
//	smaller than the middle element, perform a binary search on the lower half
//	of the collection. When seeked == element, you've found it!
//------------------------------------------------------------------------------

class BinarySearch {
	//---------------------------------------------------------------------------
	//	Task:
	//
	//	Write the binarySearch function for an array of Int
	//	Return the index of the seeked value in the original array, or -1 if
	//	seeked does not exist in the array. Also return the number of iterations
	//	it took to finish the search.
	//
	//	Consider iterative as well as recursive solutions
	//
	//	Note: this function signature does not handle Swift ArraySlice, that is a
	//	later exercise
	//---------------------------------------------------------------------------
	func binarySearch(_ seeked: Int, array: [Int]) -> (index: Int, iterations: Int) {
		let index = -1
		let iterations = 1
		
		return (index, iterations)
	}
}
