//
//  mvvmDemoTests.swift
//  mvvmDemoTests
//
//  Created by vasanth on 25/10/21.
//

import XCTest
@testable import mvvmDemo

class mvvmDemoTests: XCTestCase {

    var user : Users!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        user = Users()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        user = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    
    func testIDisNil(){
        user.id = 1
        user.checkNilCondition()
        var isStatus = false
        if user.nilCondition == .empNameisNil {
            isStatus = true
        }
        XCTAssertTrue(isStatus, "employee name is nil and case is failing")
    }
    func testEverythingisFill(){
        user.id = 1
        user.employeeName = "Test"
        user.checkNilCondition()
        var isStatus = false
        if user.nilCondition == .everythingIsFilled {
            isStatus = true
        }
        XCTAssertTrue(isStatus, "everything  is filled and case is failing")

    }
    func testEverythingisNil(){
        user.id = 1
        user.checkNilCondition()
        var isStatus = false
        if user.nilCondition == .empNameisNil {
            isStatus = true
        }
        XCTAssertTrue(isStatus, "everything is nil and case is failing")

    }
    func testEmpNameisNil(){
        user.employeeName = "Test"
        user.checkNilCondition()
        var isStatus = false
        if user.nilCondition == .idisNil {
            isStatus = true
        }
        XCTAssertTrue(isStatus, "employee Id is nil and case is failing")

    }
}
