//
//  _doGradoUITests.swift
//  2doGradoUITests
//
//  Created by user196529 on 8/29/21.
//

import XCTest

class _doGradoUITests: XCTestCase {

    func testEquationMath() throws{
        let app = XCUIApplication()
        app.launch()
        
        let enterA = app.textFields["enterA"]
        let enterB = app.textFields["enterB"]
        let enterC = app.textFields["enterC"]
        let solutionX1 = app.textFields["solX1"]
        let solutionX2 = app.textFields["solX2"]
        
        enterA.tap()
        enterA.typeText("2")
        enterB.tap()
        enterB.typeText("8")
        enterC.tap()
        enterC.typeText("4")
        app.buttons["button"].tap()
        
        print("Raiz 1 text field" + (solutionX1.value as! String))
        XCTAssertEqual(solutionX1.value as! String, "-0.58")
        print("Raiz 2 text field" + (solutionX2.value as! String))
        XCTAssertEqual(solutionX2.value as! String, "-3.41")
    }
}
