//
//  HTTPClientBuilder.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 4/8/17.
//  Copyright © 2017 SweetZpot AS. All rights reserved.
//

import Foundation

public class HTTPClientBuilder {
    public func authorizationClient(debug : Bool) -> HTTPClient {
        return AlamofireHTTPClient(baseURL: "https://www.strava.com/", debug: debug)
    }
    
    public func client(withToken token : String, debug : Bool) -> HTTPClient {
        return AlamofireHTTPClient(baseURL: "https://www.strava.com/api/v3/", token: token, debug: debug)
    }
}
