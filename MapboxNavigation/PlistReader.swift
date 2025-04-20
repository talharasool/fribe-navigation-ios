//
//  File.swift
//  
//
//  Created by Talha Rasool on 20/04/2025.
//

import Foundation


public final class PlistReader {
    
    public static func value<T>(forKey key: String) -> T? {
        guard let dict = Bundle.main.infoDictionary,
              let value = dict[key] as? T else {
            print("❌ Missing or invalid value for key: \(key)")
            return nil
        }
        return value
    }
} 
