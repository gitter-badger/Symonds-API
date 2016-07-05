//
//  SymondsAPIInternalTests.swift
//  SymondsAPI
//
//  Created by Søren Mortensen on 01/07/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import XCTest
@testable import SymondsAPI

// MARK: Properties

class SymondsAPIInternalTests: XCTestCase {
    
    let clientID = SymondsAPITestsHelper.clientID
    let secret = SymondsAPITestsHelper.secret
    let redirectURL = SymondsAPITestsHelper.redirectURL
    
}

// MARK: Life cycle

extension SymondsAPIInternalTests {
    
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

extension SymondsAPIInternalTests {
    
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
        let symondsAPI = SymondsAPI(clientID: "", secret: "", redirectURL: redirectURL)
        XCTAssertEqual(symondsAPI.redirectURL, self.redirectURL, "symondsAPI.redirectURL (\(symondsAPI.redirectURL)) should have been set to \(self.redirectURL) by SymondsAPI.init()")
    }
    
}
