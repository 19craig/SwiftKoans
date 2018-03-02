//------------------------------------------------------------------------------
//  FactorialSolution.swift
//  SwiftKoans
//
//  Created by Craig Hassig on 2/26/18.
//  Copyright (c) 2018 Craig Hassig, released under MIT License
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//	Note: These solutions work. They may or may not be the best approach but are
//	provided as reference to compare your solutions to or as suggestions on
//	different approaches.
//
//	Definition:
//
//	The factorial of a non-negative integer n, denoted n!, is the product of all
//	positive integers less than or equal to n.
//	For example, 5! = 5 * 4 * 3 * 2 * 1 = 120
//	By definition, 0! = 1
//------------------------------------------------------------------------------

class FactorialSolution {
	//---------------------------------------------------------------------------
	//	Solution:
	//		Use recursion
	//---------------------------------------------------------------------------
	func factorial(_ seed: UInt) -> UInt64 {
		var result: UInt64 = 1	// covers 1! and 0! cases by default
		
		if seed > 1 {
			result = UInt64(seed) * factorial(seed - 1)
		}
		
		return result
	}
	
	//---------------------------------------------------------------------------
	//	Solution:
	//		Use a while loop
	//---------------------------------------------------------------------------
	func factorial_1(_ seed: UInt) -> UInt64 {
		var result: UInt64 = 1	// covers 1! and 0! cases by default
		
		var iter: UInt64 = 2
		while iter <= seed {
			result *= iter
			iter += 1
		}
		
		return result
	}
	
	//---------------------------------------------------------------------------
	//	Solution:
	//		Use a for-in loop
	//---------------------------------------------------------------------------
	func factorial_3(_ seed: UInt) -> UInt64 {
		var result: UInt64 = 1	// covers 1! and 0! cases by default
		
		if seed >= 2 {
			for iter in 2...seed {
				result *= UInt64(iter)
			}
		}
		
		return result
	}
}

