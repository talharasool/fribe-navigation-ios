//
//  PlistReader.swift
//  Example
//
//  Created by Talha Rasool on 20/04/2025.
//

import Foundation

//final public class PlistReader {
//    
//    /// Reads a value from Info.plist using the specified key and type.
//    /// - Parameters:
//    ///   - key: The key in Info.plist.
//    ///   - type: The expected return type.
//    /// - Returns: The value of the specified type, or `nil` if not found or mismatched.
//    static func value<T>(forKey key: String, as type: T.Type = T.self) -> T? {
//        return Bundle.main.infoDictionary?[key] as? T
//    }
//}

import Foundation

public final class PlistReader {

    /// Reads a value from the **main app's Info.plist**
    public static func value<T>(forKey key: String) -> T? {
        guard let dict = Bundle.main.infoDictionary,
              let value = dict[key] as? T else {
            print("❌ Missing or invalid value for key: \(key)")
            return nil
        }
        return value
    }
}
