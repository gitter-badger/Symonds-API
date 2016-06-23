//
//  SymondsAPI.swift
//  SymondsAPI
//
//  Created by Søren Mortensen on 22/06/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import Foundation

/// An API for data.psc.ac.uk
public class SymondsAPI {
    
    /// Your app's client ID
    public let clientID: String
    /// Your app's secret
    public let secret: String
    
    /// Your app's redirect URL
    public let redirectURL: String
    
    public var authURL: URL {
        get {
            let clientIDQueryItem = URLQueryItem(name: "client_id", value: clientID)
            let responseTypeQueryItem = URLQueryItem(name: "response_type", value: "code")
            let redirectURIQueryItem = URLQueryItem(name: "redirect_uri", value: redirectURL)
            var components = URLComponents(string: baseAuthURL)!
            components.queryItems = [clientIDQueryItem, responseTypeQueryItem, redirectURIQueryItem]
            return components.url!
        }
    }
    
    /// The auth URL for data.psc.ac.uk
    internal let baseAuthURL = "https://data.psc.ac.uk/oauth/v2/auth"
    /// The token URL for data.psc.ac.uk
    internal let baseTokenUrl = "https://data.psc.ac.uk/oauth/v2/token"
    
    /**
     Initialises a SymondsAPI object with your app's keys.
     
     - parameter clientID: Your app's client ID (from data.psc.ac.uk).
     - parameter secret: Your app's secret (from data.psc.ac.uk).
     - parameter redirectURL: Your app's redirect URL. This should also be set in your project's info.plist with the value stored on data.psc.ac.uk for your app.
     
     - returns: A SymondsAPI object initialised with a clientID, secret, and redirect URL.
    */
    public init(clientID: String, secret: String, redirectURL: String) {
        self.clientID = clientID
        self.secret = secret
        self.redirectURL = redirectURL
    }
    
    public func getAccessToken(_ completionHandler: (String) -> Void) {
        if #available(iOS 10.0, *) {
            UIApplication.shared().open(authURL, options: [String : AnyObject](), completionHandler: { _ in /* ... */ })
        } else {
            UIApplication.shared().openURL(authURL)
        }
    }
    
    public func handleCallbackURL(_ url: URL) {
        let query = URLComponents(url: url, resolvingAgainstBaseURL: false)?.query
        if let codeString = query where codeString.contains("code=") {
            exchangeCodeForToken(codeString.components(separatedBy: "code=")[1])
        }
    }
    
    internal func exchangeCodeForToken(_ code: String) {
        
    }
    
}
