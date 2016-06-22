//
//  SymondsAPI.swift
//  SymondsAPI
//
//  Created by Søren Mortensen on 22/06/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import Foundation

public class SymondsAPI {
    
    /// Your app's client ID
    public let clientID: String
    /// Your app's secret
    public let secret: String
    
    /// Your app's redirect URL
    public let redirectURL: NSURL
    
    /// The auth URL for data.psc.ac.uk
    public static let authURL = "https://data.psc.ac.uk/oauth/v2/auth"
    /// The token URL for data.psc.ac.uk
    public static let tokenUrl = "https://data.psc.ac.uk/oauth/v2/token"
    
    /**
     Initialises a SymondsAPI object with your app's keys.
     
     - parameter clientID: Your app's client ID (from data.psc.ac.uk).
     - parameter secret: Your app's secret (from data.psc.ac.uk).
     - parameter redirectURL: Your app's redirect URL (from data.psc.ac.uk). Default value is "app://localhost"
     
     - returns: A SymondsAPI object initialised with a clientID, secret, and redirect URL.
    */
    public init(clientID: String, secret: String, redirectURL: NSURL = NSURL(string: "app://localhost")!) {
        self.clientID = clientID
        self.secret = secret
        self.redirectURL = redirectURL
    }
    
}
