//
//  _doGradoTests.swift
//  2doGradoTests
//
//  Created by user196529 on 8/29/21.
//

import XCTest
@testable import _doGrado

class _doGradoTests: XCTestCase {
    
    let equationMath = EquationMath()
    
    func testEquation() throws{
        let input = Equation(a:0, b:0, c:0, X1:0, X2:0)
        let result = equationMath.calculate(eq: input)
        let expectedValue: Float16 = 0
        
        XCTAssertEqual(result.a, expectedValue)
        XCTAssertEqual(result.b, expectedValue)
        XCTAssertEqual(result.c, expectedValue)
        XCTAssertEqual(result.X1, expectedValue)
        XCTAssertEqual(result.X2, expectedValue)
    }
    
    func testEquationSolution() throws{
        let input = Equation(a:2, b:8, c:4, X1:0, X2:0)
        
        let result = equationMath.calculate(eq: input)
        
        let expectedValueX1: Float16 = -0.58
        let expectedValueX2: Float16 = -3.41
        
        XCTAssertEqual(result.X1, expectedValueX1)
        XCTAssertEqual(result.X2, expectedValueX2)
    }

}
