//
//  ConnectionCellDataModelTests.swift
//  tddExampleTests
//
//  Created by Claudio Sobrinho on 1/15/19.
//  Copyright © 2019 Claudio Sobrinho. All rights reserved.
//

import XCTest
@testable import tddExample

class ConnectionCellDataModelTests: XCTestCase {

    var sut: ConnectionCellDataModel!
    var connection: Connection!
    
    override func setUp() {
        super.setUp()
        let attributes: [String : Any] = ["from": "London", "to": "Tokyo", "coordinates": ["from":["lat":51.5285582]]]
        connection = Connection(attributes: attributes)
        sut = LocationCellDataModel(connection: connection)
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
        connection = nil
    }
    
    func testAttributes() {
        // Attributes should not be nil
        XCTAssertNotNil(sut.name, "Name is nil in ConnectionCellDataModel")
        XCTAssertNotNil(sut.address, "Address is nil in ConnectionCellDataModel")
        XCTAssertNotNil(sut.openStatusText, "OpenStatus is nil in ConnectionCellDataModel")
        XCTAssertNotNil(sut.rating, "Rating is nil in ConnectionCellDataModel")
        
        // Test if the attributes have the same desired value as they should have.
        XCTAssertEqual(sut.from, connection.from)
        XCTAssertEqual(sut.to, connection.to)
        XCTAssertEqual(sut.lat, connection.lat)
    }
}
