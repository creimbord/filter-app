//
//  MainViewController.swift
//  FilterApp
//
//  Created by Родион on 16.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    // MARK: - Properties
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

}

// MARK: - Setup views
private extension MainViewController {
    func setupViews() {
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
