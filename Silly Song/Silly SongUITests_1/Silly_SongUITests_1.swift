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
    
    func test_validate_label(){
        let label = XCUIApplication().staticTexts["Generate a Silly Song"]
        XCTAssertNotNil(label.label.range(of:"Generate a Silly Song"))
        XCTAssertTrue(label.exists)
    }
    
    func test_validate_placeholder(){
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        //XCTAssertTrue(enterYourNameTextField.exists)
        var str = enterYourNameTextField.placeholderValue
        XCTAssertEqual("Enter your name", str)
    }
    
    func test_validate_textfield(){
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        XCTAssertTrue(enterYourNameTextField.exists)
    }
    
    func test_validate_textview(){
        let app = XCUIApplication()
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        XCTAssertTrue(textview.exists)
    }
    
    func test_validate_textviewoutput() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("TED")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()

        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        XCTAssertTrue(textview.exists)
        let x=textview.value  as! String
        let str="Ted, Ted, Bo Bed\nBanana Fana Fo Fed\nMe My Mo Med\nTed"
        
        XCTAssertEqual(x, str)
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    func test_text_startwith_vowel_and_then_consonant() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("Eed")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    func test_text_startwith_Consonant_and_then_vowel() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("Ted")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    func test_allConsonants() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]

        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("MMMM")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element

        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    func test_allVowels() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("AAAA")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        XCTAssertTrue(textview.exists)
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
}
