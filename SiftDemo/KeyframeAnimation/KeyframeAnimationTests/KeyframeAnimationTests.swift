//
//  KeyframeAnimationTests.swift
//  KeyframeAnimationTests
//
//  Created by 黄露 on 2017/1/20.
//  Copyright © 2017年 黄露. All rights reserved.
//

import XCTest
@testable import KeyframeAnimation

class KeyframeAnimationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test1()  {
        var anim1 = AnimationManager.shareInstance
        
        
        print(anim1.hash)
        
        var anim2 = AnimationManager.shareInstance
        
        print(anim2.hash)
    }
    
}
