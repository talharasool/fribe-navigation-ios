//
//  SearchViewController.swift
//  
//
//  Created by Talha Rasool on 20/04/2025.
//

import UIKit


public class SearchViewController: UIViewController {
    
    // Public property to set background color
    public var backgroundColor: UIColor? {
        didSet {
            view.backgroundColor = backgroundColor
        }
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = backgroundColor ?? .white // Default color if not set
    }
}

