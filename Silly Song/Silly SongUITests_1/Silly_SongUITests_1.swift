//
//  Silly_SongUITests_1.swift
//  Silly SongUITests_1
//
//  Created by Mayur Yewale with  at MB on 6/19/19.
//  Copyright © 2019 Mayur Yewale with  at MB. All rights reserved.
//

import XCTest
class Silly_SongUITests_1: XCTestCase {
    override func setUp() {
       
        continueAfterFailure = false

        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        XCTAssertTrue(enterYourNameTextField.exists)
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("MAYUR")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
       // let enterYourNameTextField1 = app.textViews[""]
        //XCTAssertTrue(enterYourNameTextField1.exists)
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
}
