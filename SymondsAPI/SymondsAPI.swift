//
//  SymondsAPI.swift
//  SymondsAPI
//
//  Created by Søren Mortensen on 22/06/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import Foundation

public class SymondsAPI {
    
    public let clientID: String
    public let secret: String
    
    public let redirectURL: NSURL
    
    public static let authURL = "https://data.psc.ac.uk/oauth/v2/auth"
    public static let tokenUrl = "https://data.psc.ac.uk/oauth/v2/token"
    
    public init(clientID: String, secret: String, redirectURL: NSURL) {
        self.clientID = clientID
        self.secret = secret
        self.redirectURL = redirectURL
    }
    
}
