//------------------------------------------------------------------------------
//  BinarySearchSolution.swift
//  SwiftKoans
//
//  Created by Craig Hassig on 3/1/18.
//  Copyright (c) 2018 Craig Hassig, released under MIT License
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//	Note: These solutions work. They may or may not be the best approach but are
//	provided as reference to compare your solutions to or as suggestions on
//	different approaches.
//
//	Definition:
//
//	Binary search works on a sorted collection by comparing the seeked value with
//	the middle element. If seeked is larger than the middle element, perform a
//	binary search on the upper half of the collection. If seeked is smaller
//	than the middle element, perform a binary search on the lower half of the
//	collection. When seeked == element, you've found it!
//------------------------------------------------------------------------------

class BinarySearch {
	//---------------------------------------------------------------------------
	//	Solution:
	//		Use recursion
	//---------------------------------------------------------------------------
	func binarySearch(_ seeked: Int, array: [Int]) -> (index: Int, iterations: Int) {
		var index = -1
		var iterations = 1
		
		if array.count > 0 {
			let idxMid = (array.count - 1) / 2
			let valMid = array[idxMid]
			
			if seeked == valMid {
				// Found it!
				index = idxMid
			} else if idxMid == 0 {
				// Not here, return (-1, 0)
			} else {
				if seeked < valMid {
					// Check the lower half of the array
					let slice: [Int] = Array(array[0 ..< idxMid])		// Swift ArraySlice != Array so convert
					let (idx, iter) = binarySearch(seeked, array: slice)
					index = idx
					iterations += iter
				} else {
					// Check the upper half of the array
					let idxLo = idxMid + 1
					let slice: [Int] = Array(array[idxLo ..< array.count])	// Swift ArraySlice != Array so convert
					let (idx, iter) = binarySearch(seeked, array: slice)
					index = idx == -1 ? idx : idxLo + idx
					iterations += iter
				}
			}
		}
		
		return (index, iterations)
	}

	//---------------------------------------------------------------------------
	//	Solution:
	//		Use a while loop to iterate to the solution
	//---------------------------------------------------------------------------
	func binarySearch_1(_ seeked: Int, array: [Int]) -> (index: Int, iterations: Int) {
		var index = -1
		var iterations = array.count > 0 ? 0 : 1	// Empty array => iterations = 1
		
		var idxLo = 0
		var idxHi = array.count - 1
		
		while idxLo <= idxHi {
			let idxMid = (idxHi + idxLo) / 2
			let valMid = array[idxMid]
			iterations += 1
			
			if seeked < valMid {
				// In lower half if it exists
				idxHi = idxMid - 1
			} else if seeked > valMid {
				// In higher half if it exists
				idxLo = idxMid + 1
			} else {
				// Found it!
				index = idxMid
				break
			}
		}
		
		return (index, iterations)
	}

}
