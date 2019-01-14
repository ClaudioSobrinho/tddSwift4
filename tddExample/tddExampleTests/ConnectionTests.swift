//
//  ConnectionTests.swift
//  tddExampleTests
//
//  Created by Claudio Sobrinho on 1/14/19.
//  Copyright © 2019 Claudio Sobrinho. All rights reserved.
//

import XCTest
@testable import tddExample

class ConnectionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    func testAttributes() {
        let attributes: [String : Any] = ["from": "London", "to": "Tokyo", "coordinates": ["from":["lat":51.5285582]]]
        let connection = Connection(attributes: attributes)
        XCTAssertEqual(connection.from, "London")
        XCTAssertEqual(connection.to, "Tokyo")
        XCTAssertEqual(connection.lat, 51.5285582)
    }
}
