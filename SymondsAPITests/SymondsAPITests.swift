//
//  SymondsAPITests.swift
//  SymondsAPITests
//
//  Created by Søren Mortensen on 22/06/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import XCTest
@testable import SymondsAPI

// MARK: Properties

class SymondsAPITests: XCTestCase {
    
    let clientID = "29_67x28ouh3tkwco8k0ocsws0o4cc8c4s8s44gk0k444cc8ssoo8"
    let secret = "3h33t6jpfngg8coso4w4k44k4ck40wk0kowgogggogkossws4c"
    
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
        SymondsAPIVersionNumber
    }
    
}

// MARK: Tests

extension SymondsAPITests {
    
    /// Test that SymondsAPI.init(clientID:secret:redirectURL:)
    func test_initialiser_setsClientIDCorrectly() {
        let symondsAPI = SymondsAPI(clientID: self.clientID, secret: "", redirectURL: NSURL(string: "")!)
        XCTAssertEqual(symondsAPI.clientID, self.clientID, "symondsAPI.clientID should have been set to self.clientID by symondsAPI.init()")
    }
    
    func test_initialiser_setsSecretCorrectly() {
        let symondsAPI = SymondsAPI(clientID: "", secret: self.secret, redirectURL: NSURL(string: "")!)
        XCTAssertEqual(symondsAPI.secret, self.secret, "symondsAPI.secret should have been set to self.secret by symondsAPI.init()")
    }
    
}
