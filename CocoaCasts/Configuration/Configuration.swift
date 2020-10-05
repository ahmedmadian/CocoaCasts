//
//  Configuration.swift
//  CocoaCasts
//
//  Created by Ahmed Madian on 10/5/20.
//  Copyright © 2020 Ahmed Madian. All rights reserved.
//

import Foundation

enum Configuration: String {
    
    // MARK: - Configurations
    
    case debug
    case release
    
    // MARK: -  Current Configuration
    
    static let current: Configuration = {
       
        guard let value = Bundle.main.infoDictionary?["Configuration"] as? String else {
            fatalError("Can't found a Configuration")
        }
        
        guard let rawValue = value.split(separator: "/").first else {
            fatalError("Invalid Configuration")
        }
        
        guard let configuration = Configuration(rawValue: rawValue.lowercased()) else {
            fatalError("Invalid Configuration")
        }
        
        return configuration
    }()
    
}
