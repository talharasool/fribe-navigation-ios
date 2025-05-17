//
//  SearchViewController.swift
//  
//
//  Created by Talha Rasool on 20/04/2025.
//

import UIKit

/// A view controller that provides search functionality
public class SearchViewController: UIViewController {
    
    /// The background color of the search view
    public var backgroundColor: UIColor? {
        didSet {
            view.backgroundColor = backgroundColor
        }
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor ?? .white
    }
}

