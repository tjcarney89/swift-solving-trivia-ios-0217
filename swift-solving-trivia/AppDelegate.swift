//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        var state = ""
        for (key, value) in trivia {
            var keyLetters = Set(key.lowercased().characters)
            var valueLetters = value.lowercased().characters
            var commonLetters = keyLetters.intersection(valueLetters)
            if commonLetters.isEmpty {
                state = key
            }
        }
        
        return state
        

    }
    
    
    
    
}

