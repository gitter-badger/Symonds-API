//
//  SymondsAPITests.swift
//  SymondsAPITests
//
//  Created by Søren Mortensen on 22/06/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import XCTest
import SymondsAPI

// MARK: Properties

class SymondsAPITests: XCTestCase {
    
    let clientID = "clientID-example-SymondsAPI-tests-2040231533"
    let secret = "symondsAPItests_8471489219_secret_example"
    
}

// MARK: Life cycle

extension SymondsAPITests {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
}

// MARK: Tests

extension SymondsAPITests {
    
    /// Test that SymondsAPI.init(clientID:secret:redirectURL:) correctly sets clientID
    func test_SymondsAPI_initialiser_setsCorrectValue_for_clientID() {
        let symondsAPI = SymondsAPI(clientID: self.clientID, secret: "", redirectURL: "")
        XCTAssertEqual(symondsAPI.clientID, self.clientID, "symondsAPI.clientID (\(symondsAPI.clientID)) should have been set to \(self.clientID) by SymondsAPI.init()")
    }
    
    /// Test that SymondsAPI.init(clientID:secret:redirectURL:) correctly sets secret
    func test_SymondsAPI_initialiser_setsCorrectValue_for_secret() {
        let symondsAPI = SymondsAPI(clientID: "", secret: self.secret, redirectURL: "")
        XCTAssertEqual(symondsAPI.secret, self.secret, "symondsAPI.secret (\(symondsAPI.secret)) should have been set to \(self.secret) by SymondsAPI.init()")
    }
    
    /// Test that SymondsAPI.init(clientID:secret:redirectURL:) correctly sets redirectURL
    func test_SymondsAPI_initialiser_setsCorrectValue_for_redirectURL() {
        let testURL = "https://github.com/sorenmortensen/Symonds-API"
        let symondsAPI = SymondsAPI(clientID: "", secret: "", redirectURL: testURL)
        XCTAssertEqual(symondsAPI.redirectURL, testURL, "symondsAPI.redirectURL (\(symondsAPI.redirectURL)) should have been set to \(testURL) by SymondsAPI.init()")
    }
    
}
