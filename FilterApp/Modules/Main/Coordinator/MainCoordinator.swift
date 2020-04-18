//
//  MainCoordinator.swift
//  FilterApp
//
//  Created by Родион on 16.04.2020.
//  Copyright © 2020 Родион. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainViewController.instantiate(with: storyboard)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
