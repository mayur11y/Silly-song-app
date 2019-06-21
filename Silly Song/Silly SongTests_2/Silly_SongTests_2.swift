//
//  Silly_SongTests_2.swift
//  Silly SongTests_2
//
//  Created by Mayur Yewale with  at MB on 6/19/19.
//  Copyright © 2019 Mayur Yewale with  at MB. All rights reserved.
//

import XCTest
@testable import Silly_Song
class Silly_SongTests_2: XCTestCase {
    var sut:ViewController!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut=ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_label_validate() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Generate a Silly Song", login.label!.text)
    }
    
    func test_name_empty() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("", login.nameField!.text!)
    }
    
    func test_lyricsview_empty() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("", login.lyricsView!.text!)
    }
    
    func test_name_placeholder() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Enter your name", login.nameField!.placeholder!)
    }
    
    func test_lyrics_output() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        let str=login.displayLyrics("MAYUR")
        print(str)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    

}
