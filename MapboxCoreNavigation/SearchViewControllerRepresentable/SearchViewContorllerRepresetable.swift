//
//  File.swift
//  
//
//  Created by Talha Rasool on 20/04/2025.
//

import SwiftUI

public struct SearchViewControllerRepresentable: UIViewControllerRepresentable {
    public var backgroundColor: UIColor?

    public init(backgroundColor: UIColor? = nil) {
        self.backgroundColor = backgroundColor
    }

    public func makeUIViewController(context: Context) -> SearchViewController {
        let vc = SearchViewController()
        vc.backgroundColor = backgroundColor
        return vc
    }

    public func updateUIViewController(_ uiViewController: SearchViewController, context: Context) {
        // Update background color dynamically if needed
        uiViewController.backgroundColor = backgroundColor
    }
}
