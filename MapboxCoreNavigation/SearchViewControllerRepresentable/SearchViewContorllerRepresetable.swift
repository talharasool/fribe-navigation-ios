//
//  File.swift
//  
//
//  Created by Talha Rasool on 20/04/2025.
//

import Foundation

import SwiftUI

@available(iOS 13.0, *)
struct SearchViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SearchViewController {
        return SearchViewController()
    }

    func updateUIViewController(_ uiViewController: SearchViewController, context: Context) {
        // No update logic for now
    }
}
