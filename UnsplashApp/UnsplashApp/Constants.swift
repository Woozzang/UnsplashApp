//
//  Constants.swift
//  UnsplashApp
//
//  Created by Park Woo Chan on 2022/06/30.
//

import Foundation

let baseURL = "https://api.unsplash.com/"

func get(_ path: String) {
    
    guard let url = URL(string: path) else { return }
    
    var request = URLRequest(url: url)
    
    //
    //Accept-Version: v1
    request.setValue("v1", forHTTPHeaderField: "Accept-Version")
    
}

//var request = URLRequest(url: url)
//request.setValue("application/json", forHTTPHeaderField: "Accept")
//request.setValue("my-secret-key", forHTTPHeaderField: "X-Mashape-Key")
