//
//  File.swift
//  
//
//  Created by Talha Rasool on 20/04/2025.
//

import SwiftUI

/// A UIViewControllerRepresentable wrapper for SearchViewController
public struct SearchViewControllerRepresentable: UIViewControllerRepresentable {
    /// The background color of the search view
    public var backgroundColor: UIColor?
    
    /// Initialize the search view controller representable
    /// - Parameter backgroundColor: Optional background color for the search view
    public init(backgroundColor: UIColor? = nil) {
        self.backgroundColor = backgroundColor
    }
    
    public func makeUIViewController(context: Context) -> SearchViewController {
        let vc = SearchViewController()
        vc.backgroundColor = backgroundColor
        return vc
    }
    
    public func updateUIViewController(_ uiViewController: SearchViewController, context: Context) {
        uiViewController.backgroundColor = backgroundColor
    }
}
