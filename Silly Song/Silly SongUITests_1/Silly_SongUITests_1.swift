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
    
    //Test case to validate label on app
    func test_Validate_Label(){
        let label = XCUIApplication().staticTexts["Generate a Silly Song"]
        XCTAssertNotNil(label.label.range(of:"Generate a Silly Song"))
        XCTAssertTrue(label.exists)
    }
    
    //Test case to validate placeholder in textfield
    func test_Validate_Placeholder(){
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        var str = enterYourNameTextField.placeholderValue
        XCTAssertEqual("Enter your name", str)
    }
    
    //Test case to validate textfield
    func test_Validate_Textfield(){
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        XCTAssertTrue(enterYourNameTextField.exists)
    }
    
    //Test case to validate textview
    func test_Validate_Textview(){
        let app = XCUIApplication()
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        XCTAssertTrue(textview.exists)
    }
    
    //Test case to validate textview output
    func test_Validate_TextviewOutput() {

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
    
    //Test case to enter text which start with vowel and end with consonant
    func test_Text_Startwith_Vowel_And_Then_Consonant() {

        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("EED")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        
        let x=textview.value  as! String
        let str="Eed, Eed, Bo Beed\nBanana Fana Fo Feed\nMe My Mo Meed\nEed"
        
        XCTAssertEqual(x, str)
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    //Test case to enter text which start with consonant and end with vowel
    func test_Text_Startwith_Consonant_And_Then_Vowel() {

        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("TED")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        
        let x=textview.value  as! String
        let str="Ted, Ted, Bo Bed\nBanana Fana Fo Fed\nMe My Mo Med\nTed"
        XCTAssertEqual(x, str)
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    //Test case to enter text which has all consonant
    func test_AllConsonants() {
    
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]

        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("MMMM")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element

        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        
        let x=textview.value  as! String
        let str="Mmmm, Mmmm, Bo Bmmmm\nBanana Fana Fo Fmmmm\nMe My Mo Mmmmm\nMmmm"
        
        XCTAssertEqual(x, str)
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
    
    //Test case to enter text which has all vowels
    func test_AllVowels() {
        
        let app = XCUIApplication()
        let enterYourNameTextField = app.textFields["Enter your name"]
        
        enterYourNameTextField.tap()
        enterYourNameTextField.typeText("AAAA")
        let generateASillySongElement = app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").element
        
        generateASillySongElement.tap()
        generateASillySongElement.tap()
        
        let textview=app.otherElements.containing(.staticText, identifier:"Generate a Silly Song").children(matching: .textView).element
        let x=textview.value  as! String
        let str="Aaaa, Aaaa, Bo Baaaa\nBanana Fana Fo Faaaa\nMe My Mo Maaaa\nAaaa"
        
        XCTAssertEqual(x, str)
        XCTAssertTrue(textview.exists)
        enterYourNameTextField.tap()
        XCUIApplication().terminate()
    }
}
