//
//  SymondsAPI.swift
//  SymondsAPI
//
//  Created by Søren Mortensen on 22/06/2016.
//  Copyright © 2016 Soren Mortensen. All rights reserved.
//

import Foundation

/**
 An API that authenticates with and retrieves information from data.psc.ac.uk.
 
 To begin, register your app at data.psc.ac.uk to receive your client ID and secret. Set your redirect URL to "[somescheme]://[bundleid]" where [somescheme] is an arbitrary string such as "app" or "symonds", and [bundleid] is your app's bundle ID.
 Then initialise a SymondsAPI object with your client ID, bundle ID, and redirect URL.
*/
public final class SymondsAPI {
    
    /// The URL used for retrieval of an access token. It is created from the base authentication URL, your app's client ID, and your app's redirect URL.
    public var authURL: URL {
        get {
            // We're going to create a URL using a set of components
            // Create the new URL starting with the base authentication URL
            var components = URLComponents(string: baseAuthURL)!
            
            // Create the components
            let clientIDQueryItem = URLQueryItem(name: "client_id", value: clientID)
            let responseTypeQueryItem = URLQueryItem(name: "response_type", value: "code")
            let redirectURIQueryItem = URLQueryItem(name: "redirect_uri", value: redirectURL)
            
            // Add the components to the URL and return it
            components.queryItems = [clientIDQueryItem, responseTypeQueryItem, redirectURIQueryItem]
            return components.url!
        }
    }
    
    /// Your app's client ID, enerated when you register an app at data.psc.ac.uk.
    public let clientID: String
    /// Your app's secret, generated when you register an app at data.psc.ac.uk.
    public let secret: String
    /// Your app's redirect URL; this should be set to the same value as it is on data.psc.ac.uk.
    public let redirectURL: String
    
    /// The base authentication URL for data.psc.ac.uk.
    internal let baseAuthURL = "https://data.psc.ac.uk/oauth/v2/auth"
    /// The token URL for data.psc.ac.uk.
    internal let baseTokenUrl = "https://data.psc.ac.uk/oauth/v2/token"
    
    /**
     Creates an instance of SymondsAPI containing your app's keys.
     
     - parameter clientID: Your app's client ID. Generated when you register an app at data.psc.ac.uk.
     - parameter secret: Your app's secret. Generated along with your client ID.
     - parameter redirectURL: Your app's redirect URL. You should set this when you register an app at data.psc.ac.uk. This should also be set in your project's info.plist.
     
     - returns: An instance of SymondsAPI initialised with a clientID, secret, and redirect URL.
    */
    public init(clientID: String, secret: String, redirectURL: String) {
        self.clientID = clientID
        self.secret = secret
        self.redirectURL = redirectURL
    }
    
    public func getAccessToken() {
        // Tell the application to open the authentication url in Safari, so the user can log in.
        if #available(iOS 10.0, *) {
            // We have to use a different method depending on the iOS version. This is the iOS 10 method.
            UIApplication.shared().open(authURL)
        } else {
            // ...and this is the pre-iOS 10 method!
            UIApplication.shared().openURL(authURL)
        }
    }
    
    public func handleCallbackURL(_ url: URL) -> Bool {
        // This method is called by AppDelegate.application(_:open:options:) in the base application when the user returns from authenticating in Safari.
        // We will decompose the URL into its components and then its queries, to check for a query named "code" whose value is
        let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
        if let queries = components?.queryItems?.filter({ $0.name == "code" && $0.value != nil }) where queries.count == 1 {
            return exchangeCodeForToken(queries[0].value!)
        } else { return false }
    }
    
    internal func exchangeCodeForToken(_ code: String) -> Bool {
        return false
    }
    
}
